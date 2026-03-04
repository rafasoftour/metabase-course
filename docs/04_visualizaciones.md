# 04. Visualizaciones en Metabase

## Elegir el grafico correcto

- Serie temporal (`Line`): evolucion diaria/semanal/mensual
- Barras (`Bar`): comparar lineas, paradas o conductores
- Tabla (`Table`): detalle operativo
- KPI (`Number`): valor puntual (ej. recaudacion de ayer)
- Mapa (`Map`, si aplica): analisis geografico de paradas

## Regla rapida

```text
Si comparas categorias -> barras
Si analizas tendencia -> linea
Si necesitas detalle -> tabla
Si reportas un unico valor -> KPI
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
