SELECT
  c.day AS dia,
  c.line_code AS linea,
  c.gtfs_stop_code AS codigo_parada,
  COALESCE(c.stop_code, c.gtfs_stop_code) AS parada,
  SUM(COALESCE(c.stop_in, 0)) AS subidas,
  SUM(COALESCE(c.stop_out, 0)) AS bajadas,
  AVG(c.passengers) AS ocupacion_media
FROM dw_sae.v_almex_contadores_clean c
WHERE 1=1
[[AND {{fecha_inicio}}]]
[[AND {{fecha_fin}}]]
GROUP BY c.day, c.line_code, c.gtfs_stop_code, COALESCE(c.stop_code, c.gtfs_stop_code)
ORDER BY c.day, subidas DESC;
