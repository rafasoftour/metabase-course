# 02. Expediciones por linea

## Titulo
Ranking de expediciones por linea

## Problema de negocio
Operacion necesita identificar que lineas concentran mayor oferta de servicio para dimensionar recursos.

## Consulta SQL
```sql
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
```

## Visualizacion recomendada
Grafico de barras horizontal ordenado de mayor a menor por `total_expediciones`.

## Explicacion de la metrica
- `total_expediciones`: carga operativa acumulada por linea.
- `dias_con_servicio`: continuidad del servicio durante el periodo.
