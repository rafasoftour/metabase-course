# 04. Recaudacion por linea

## Titulo
Recaudacion diaria por linea

## Problema de negocio
Finanzas y operacion necesitan medir ingresos por linea y vigilar desviaciones frente a demanda de viajeros.

## Consulta SQL
```sql
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
```

## Visualizacion recomendada
Linea por `dia` (serie por `linea`) y tabla auxiliar para `ingreso_medio_por_viajero`.

## Explicacion de la metrica
- `recaudacion_total`: suma de importes validados en el periodo.
- `viajeros_total`: volumen de viajeros asociado.
- `ingreso_medio_por_viajero`: proxy de rendimiento comercial por validacion.
