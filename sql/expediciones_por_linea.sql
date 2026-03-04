SELECT
  e.linea,
  COALESCE(MAX(e.nom_linea), e.linea) AS nombre_linea,
  COUNT(*) AS total_expediciones,
  COUNT(DISTINCT e.fecha_iso) AS dias_con_servicio
FROM dw_sae.expediciones e
WHERE 1=1
[[AND {{fecha_inicio}}]]
[[AND {{fecha_fin}}]]
GROUP BY e.linea
ORDER BY total_expediciones DESC;
