# Prompt generador de cards (plantilla reusable)

## Instrucciones

Copia y completa este prompt en ChatGPT/Copilot.

```text
Actua como analista BI senior experto en Metabase y PostgreSQL.
Contexto: empresa de transporte publico.
Objetivo: generar una card de Metabase lista para publicar.

Pregunta de negocio:
"{{pregunta_negocio}}"

Tablas permitidas (solo estas):
{{tablas_permitidas}}

Campos relevantes:
{{campos_relevantes}}

Restricciones:
- SQL compatible con PostgreSQL
- Evitar SELECT *
- Usar campos transformados (conv_*) cuando existan
- Incluir filtro de fechas en formato opcional de Metabase:
  WHERE 1=1
  [[AND {{fecha_inicio}}]]
  [[AND {{fecha_fin}}]]
- No inventar columnas

Devuelve exactamente:
1) Titulo de la card
2) Problema de negocio (2 lineas)
3) SQL
4) Visualizacion recomendada y por que
5) Definicion de metrica principal
6) Riesgos de interpretacion y validaciones sugeridas
```

## Recomendacion

Pasa siempre un extracto real de DDL o diccionario de campos para reducir alucinaciones.
