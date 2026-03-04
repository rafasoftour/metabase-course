# 03. Primeras consultas en Metabase

## Objetivo

Pasar de una pregunta de negocio a una consulta SQL valida y entendible.

## Metodo practico

1. Define la pregunta con una sola metrica principal.
2. Elige la tabla de menor granularidad necesaria.
3. Escribe una consulta minima (filtro temporal + agregacion).
4. Valida que el resultado tenga sentido con un rango corto de fechas.
5. Guarda la consulta como card con nombre de negocio.

## Plantilla base

```sql
SELECT
  fecha_iso,
  linea,
  COUNT(*) AS total_registros
FROM dw_sae.expediciones
WHERE 1=1
[[AND {{fecha_inicio}}]]
[[AND {{fecha_fin}}]]
GROUP BY 1, 2
ORDER BY 1, 2;
```

## Preguntas de negocio iniciales

- Cuantas expediciones se realizan por dia?
- Que lineas concentran mas viajeros?
- Como evoluciona la recaudacion semanal?
- Que paradas tienen mayor subida de viajeros?

## Errores comunes

- mezclar granularidades en una misma consulta
- usar campos `_raw` en lugar de campos `conv_*`
- no filtrar fechas (consultas muy pesadas)
- no revisar nulos en importes o viajeros
