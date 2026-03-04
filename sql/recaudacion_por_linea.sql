SELECT
  r.fecha_iso AS dia,
  r.linea,
  SUM(COALESCE(r.conv_importe_total_sum, 0)) AS recaudacion_total,
  SUM(COALESCE(r.conv_viajeros_sum, 0)) AS viajeros_total,
  CASE
    WHEN SUM(COALESCE(r.conv_viajeros_sum, 0)) = 0 THEN NULL
    ELSE SUM(COALESCE(r.conv_importe_total_sum, 0)) / SUM(COALESCE(r.conv_viajeros_sum, 0))
  END AS ingreso_medio_por_viajero
FROM dw_sae.recaudaciones r
WHERE r.fecha_iso BETWEEN {{fecha_inicio}} AND {{fecha_fin}}
GROUP BY r.fecha_iso, r.linea
ORDER BY r.fecha_iso, r.linea;
