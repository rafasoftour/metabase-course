# 03. Viajeros por parada

## Titulo
Subidas y bajadas por parada (contadores)

## Problema de negocio
Se requiere detectar paradas con mayor demanda para ajustar oferta, frecuencias o informacion al usuario.

## Consulta SQL
```sql
SELECT
  c.day AS dia,
  c.line_code AS linea,
  c.gtfs_stop_code AS codigo_parada,
  COALESCE(c.stop_code, c.gtfs_stop_code) AS parada,
  SUM(COALESCE(c.stop_in, 0)) AS subidas,
  SUM(COALESCE(c.stop_out, 0)) AS bajadas,
  AVG(c.passengers) AS ocupacion_media
FROM dw_sae.v_almex_contadores_clean c
WHERE c.day BETWEEN {{fecha_inicio}} AND {{fecha_fin}}
GROUP BY c.day, c.line_code, c.gtfs_stop_code, COALESCE(c.stop_code, c.gtfs_stop_code)
ORDER BY c.day, subidas DESC;
```

## Visualizacion recomendada
Barras por parada (top N) y tabla de detalle para contraste de `subidas` vs `bajadas`.

## Explicacion de la metrica
- `subidas`: viajeros que suben en la parada (demanda de acceso).
- `bajadas`: viajeros que bajan en la parada (demanda de descenso).
- `ocupacion_media`: carga media estimada del vehiculo en el punto de medida.
