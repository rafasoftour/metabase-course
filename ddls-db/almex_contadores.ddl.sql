create table dw_sae.almex_contadores
(
    id             bigserial
        primary key,
    day            date                                   not null,
    line_code      text                                   not null,
    time_mark      timestamp                              not null,
    gtfs_stop_code text                                   not null,
    route_descr    text,
    bus            text,
    dept_time      time,
    start_date     timestamp,
    stop_code      text,
    stop_in        integer,
    stop_out       integer,
    exp_in         integer,
    exp_out        integer,
    passengers     integer,
    latitude       double precision,
    longitude      double precision,
    created_at     timestamp with time zone default now() not null,
    updated_at     timestamp with time zone default now() not null,
    num_counter    integer,
    trip_id        text,
    position       integer,
    seats          integer
);

alter table dw_sae.almex_contadores
    owner to etl_user;

grant select, update, usage on sequence dw_sae.almex_contadores_id_seq to role_etl;

create unique index ux_almex_contadores_day_line_timemark_stop
    on dw_sae.almex_contadores (day, line_code, time_mark, gtfs_stop_code);

grant select on dw_sae.almex_contadores to metabase;

grant delete, insert, select, update on dw_sae.almex_contadores to role_etl;

