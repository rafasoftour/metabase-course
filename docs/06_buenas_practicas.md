# 06. Buenas practicas

## SQL y modelado

- preferir campos transformados (`conv_*`) frente a `*_raw`
- explicitar granularidad en nombre y descripcion de card
- controlar nulos con `COALESCE` cuando aplique
- evitar `SELECT *` en cards de produccion

## Calidad de metrica

Checklist minimo antes de publicar una card:

1. La definicion de metrica es unica y clara.
2. El periodo temporal esta definido.
3. La unidad esta indicada (viajeros, euros, expediciones).
4. Hay validacion basica con muestra manual.

## Rendimiento

- filtrar por fecha en todas las consultas
- limitar columnas al minimo necesario
- crear cards base reutilizables en lugar de duplicar SQL
- usar agregaciones previas cuando el detalle sea muy grande

## Gobierno y colaboracion

- nombrar cards con formato: `Area - Pregunta - Granularidad`
- documentar supuestos en la descripcion
- versionar SQL y fichas en este repositorio
- revisar con negocio antes de marcar un dashboard como oficial
