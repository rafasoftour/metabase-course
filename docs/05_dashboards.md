# 05. Dashboards en Metabase

## Objetivo de un dashboard

Un dashboard no es una coleccion de graficos; es una historia operativa para decidir y actuar.

## Estructura sugerida

```text
[KPIs principales]
[Trend temporal]
[Desglose por linea]
[Desglose por parada/conductor]
[Tabla de detalle]
```

## Dashboard minimo para operacion de transporte

- KPI 1: expediciones del dia
- KPI 2: viajeros del dia
- KPI 3: recaudacion del dia
- Grafico: evolucion semanal de viajeros
- Grafico: top lineas por viajeros
- Tabla: incidencias o desviaciones relevantes

## Filtros globales recomendados

- rango de fechas
- linea
- sentido
- vehiculo (solo en analisis operativo)

## Buenas practicas de montaje

1. Colocar primero lo mas accionable.
2. Conectar filtros a todas las cards compatibles.
3. Evitar duplicar la misma metrica en varios graficos.
4. Revisar tiempos de carga antes de publicar.
