# 01. Expediciones por dia

## Titulo
Expediciones realizadas por dia

## Problema de negocio
Necesitamos controlar si el volumen diario de servicio programado se mantiene estable o presenta caidas.

## Consulta SQL
```sql
SELECT
  e.fecha_iso AS dia,
  COUNT(*) AS total_expediciones,
  COUNT(DISTINCT e.id_viaje) AS viajes_distintos
FROM dw_sae.expediciones e
WHERE e.fecha_iso BETWEEN {{fecha_inicio}} AND {{fecha_fin}}
GROUP BY e.fecha_iso
ORDER BY e.fecha_iso;
```

## Visualizacion recomendada
Grafico de linea (eje X: `dia`, eje Y: `total_expediciones`).

## Explicacion de la metrica
- `total_expediciones`: numero de registros de expediciones por fecha.
- `viajes_distintos`: control de diversidad operativa para evitar duplicados en lectura de servicio.
