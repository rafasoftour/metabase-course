# 01. Introduccion a Metabase

## Que es Metabase

Metabase es una herramienta de Business Intelligence (BI) para convertir datos en decisiones.
Permite crear:

- consultas
- graficos
- dashboards
- alertas

sin necesidad de desarrollar una aplicacion a medida.

## Como encaja en BI

Flujo de trabajo recomendado:

```text
datos -> pregunta -> consulta -> visualizacion -> dashboard -> decision
```

Metabase acelera este flujo porque combina exploracion guiada y SQL nativo.

## Conexion con PostgreSQL

Pasos tipicos en Admin -> Databases:

1. Seleccionar `PostgreSQL`
2. Configurar host, puerto, base de datos, usuario y password
3. Guardar y ejecutar sincronizacion de metadatos
4. Revisar tipos de columnas y descripcion de tablas

Buenas practicas:

- usar usuario de solo lectura para analitica
- documentar tablas y campos en Data Model
- ocultar campos tecnicos que no aportan negocio

## Tipos de preguntas en Metabase

- `Question Builder`: para agregaciones simples sin SQL
- `Native query`: SQL completo para casos de negocio reales

## Resultado esperado del modulo

Al finalizar, deberias poder ubicar una tabla, crear una pregunta simple y guardarla como card.
