# 04. Visualizaciones en Metabase

## Elegir el grafico correcto

- Serie temporal (`Line`): evolucion diaria/semanal/mensual
- Barras (`Bar`): comparar lineas, paradas o conductores
- Tabla (`Table`): detalle operativo
- KPI (`Number`): valor puntual (ej. recaudacion de ayer)
- Mapa (`Map`, si aplica): analisis geografico de paradas

## Visualizaciones mas frecuentes y sentido de uso

En dashboards operativos de transporte, estas son las visualizaciones mas habituales:

1. `KPI (Number)` - muy frecuente
Uso: mostrar un valor clave de estado (viajeros hoy, expediciones hoy, recaudacion hoy).
Sentido: responder rapido "como estamos ahora?".
Evitar cuando: necesitas contexto historico o comparacion entre categorias.

2. `Line` - muy frecuente
Uso: analizar evolucion temporal (por dia/semana/mes).
Sentido: detectar tendencia, estacionalidad y cambios bruscos.
Evitar cuando: no hay eje temporal o hay pocas observaciones.

3. `Bar` - muy frecuente
Uso: comparar categorias (lineas, paradas, conductores).
Sentido: identificar ranking y diferencias relativas.
Evitar cuando: hay demasiadas categorias sin filtro (pierde legibilidad).

4. `Table` - frecuente
Uso: detalle para auditoria, seguimiento y exportacion.
Sentido: responder "que registros explican el resultado?".
Evitar cuando: quieres comunicar insight ejecutivo de un vistazo.

## Regla rapida

```text
Si comparas categorias -> barras
Si analizas tendencia -> linea
Si necesitas detalle -> tabla
Si reportas un unico valor -> KPI
```

## Mini diagrama de decision

```text
Pregunta principal?
|- "estado actual" -> KPI
|- "evolucion en el tiempo" -> Line
|- "comparacion entre grupos" -> Bar
|- "detalle y trazabilidad" -> Table
```

## Recomendaciones de diseno

- titulo con pregunta de negocio
- eje Y con unidad clara (viajeros, euros, expediciones)
- ordenar categorias de mayor a menor cuando sea ranking
- limitar categorias (top 10/20) para mejorar lectura
- usar filtros visibles: fecha, linea, concesion

## Ejemplo

Pregunta: "Como evoluciona la recaudacion diaria por linea?"

- metrica: `SUM(conv_importe_total_sum)`
- dimension temporal: `fecha_iso`
- dimension comparativa: `linea`
- visual recomendada: linea multi-serie
