# 07. Uso de IA para generar cards

## Objetivo

Usar IA como copiloto para acelerar borradores de consultas y fichas de cards, manteniendo control analitico humano.

## Flujo recomendado

1. Definir pregunta de negocio y metrica.
2. Compartir a la IA contexto de tablas/columnas reales.
3. Pedir SQL inicial con filtros parametrizables.
4. Revisar y ajustar SQL en Metabase.
5. Documentar card final en `cards_catalog/`.

## Reglas de calidad

- no ejecutar SQL sin revisar joins y granularidad
- confirmar que la metrica coincide con la definicion de negocio
- pedir siempre explicacion de supuestos
- forzar salida en formato estructurado (SQL + visual + justificacion)

## Plantilla de prompt breve

```text
Actua como analista BI experto en Metabase y PostgreSQL.
Genera una card para responder: "<pregunta>".
Usa solo estas tablas: <tablas>.
Incluye:
1) SQL compatible con PostgreSQL
2) visualizacion recomendada
3) definicion de metrica
4) filtros sugeridos para dashboard
```

## Cuando NO usar IA directamente

- metricas financieras oficiales sin validacion previa
- dashboards ejecutivos sin revision de negocio
- consultas con logica compleja no documentada
