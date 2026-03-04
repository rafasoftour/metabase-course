create view dw_sae.v_almex_contadores_clean
            (id, day, line_code, time_mark, gtfs_stop_code, route_descr, bus, dept_time, start_date, stop_code, stop_in,
             stop_out, exp_in, exp_out, passengers, latitude, longitude, created_at, updated_at, num_counter, trip_id,
             position, seats)
as
SELECT id,
       day,
       line_code,
       time_mark,
       gtfs_stop_code,
       route_descr,
       bus,
       dept_time,
       start_date,
       stop_code,
       CASE
           WHEN stop_in >= 0 AND stop_in <= 120 THEN stop_in
           ELSE NULL::integer
           END AS stop_in,
       CASE
           WHEN stop_out >= 0 AND stop_out <= 120 THEN stop_out
           ELSE NULL::integer
           END AS stop_out,
       exp_in,
       exp_out,
       CASE
           WHEN passengers IS NULL THEN NULL::integer
           WHEN seats IS NOT NULL AND seats > 0 AND passengers >= 0 AND passengers <= ceil(seats::numeric * 1.2)::integer
               THEN passengers
           WHEN (seats IS NULL OR seats <= 0) AND passengers >= 0 AND passengers <= 120 THEN passengers
           ELSE NULL::integer
           END AS passengers,
       latitude,
       longitude,
       created_at,
       updated_at,
       num_counter,
       trip_id,
       "position",
       CASE
           WHEN seats >= 1 AND seats <= 200 THEN seats
           ELSE NULL::integer
           END AS seats
FROM dw_sae.almex_contadores;

alter table dw_sae.v_almex_contadores_clean
    owner to etl_user;

