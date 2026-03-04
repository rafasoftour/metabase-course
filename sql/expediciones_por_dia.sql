SELECT
  e.fecha_iso AS dia,
  COUNT(*) AS total_expediciones,
  COUNT(DISTINCT e.id_viaje) AS viajes_distintos
FROM dw_sae.expediciones e
WHERE 1=1
[[AND {{fecha_inicio}}]]
[[AND {{fecha_fin}}]]
GROUP BY e.fecha_iso
ORDER BY e.fecha_iso;
