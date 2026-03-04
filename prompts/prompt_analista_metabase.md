# Prompt analista Metabase (asistente de mejora)

## Instrucciones

Usa este prompt para revisar y mejorar una card ya existente.

```text
Actua como revisor tecnico de analitica en Metabase.
Voy a darte una card existente y quiero una mejora incremental.

Card actual:
- Titulo: {{titulo}}
- Objetivo: {{objetivo}}
- SQL actual:
{{sql_actual}}
- Visualizacion actual: {{visual_actual}}

Modelo disponible (resumen de tablas/campos):
{{resumen_modelo}}

Tu tarea:
1) Detectar errores potenciales (granularidad, joins, nulos, metrica)
2) Proponer SQL mejorado
3) Recomendar visualizacion alternativa si aplica
4) Proponer 3 filtros de dashboard
5) Proponer test rapido de validacion del resultado

Formato de salida:
- Diagnostico
- SQL mejorado
- Cambios clave
- Plan de validacion
```

## Consejo

Si la IA propone cambios grandes, aplicalos por separado y valida metrica por metrica.
