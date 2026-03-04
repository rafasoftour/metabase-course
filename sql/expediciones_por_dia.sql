SELECT
  e.fecha_iso AS dia,
  COUNT(*) AS total_expediciones,
  COUNT(DISTINCT e.id_viaje) AS viajes_distintos
FROM dw_sae.expediciones e
WHERE e.fecha_iso BETWEEN {{fecha_inicio}} AND {{fecha_fin}}
GROUP BY e.fecha_iso
ORDER BY e.fecha_iso;
