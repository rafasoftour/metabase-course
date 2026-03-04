# Curso de Metabase para Analistas de Transporte Publico

Repositorio didactico para aprender a construir analisis de negocio en Metabase usando PostgreSQL sobre datos operativos de transporte.

## Proposito

Este repositorio sirve como:

- material del curso interno
- documentacion de referencia para analistas
- coleccion de ejemplos SQL reproducibles
- guia para usar IA (ChatGPT/Copilot) en la creacion de tarjetas (cards) de Metabase

## Publico objetivo

Analistas de datos con base en SQL y negocio, sin experiencia previa en Metabase.

## Que vas a aprender

- entender el flujo: `datos -> pregunta -> consulta -> visualizacion -> dashboard`
- crear preguntas en Metabase (Question Builder y SQL nativo)
- elegir visualizaciones segun la metrica
- disenar dashboards utiles para operacion y seguimiento
- redactar prompts para generar cards con IA de forma controlada

## Estructura del repositorio

- `docs/`: contenido del curso por modulos
- `sql/`: consultas base reutilizables
- `cards_catalog/`: fichas pedagogicas de tarjetas
- `prompts/`: prompts listos para usar con IA
- `ddls-db/`: DDL del modelo DW (fuente tecnica)

## Ruta recomendada de estudio

1. Leer [docs/01_introduccion_metabase.md](docs/01_introduccion_metabase.md)
2. Entender el modelo en [docs/02_modelo_datos_transporte.md](docs/02_modelo_datos_transporte.md)
3. Practicar consultas con [docs/03_primeras_consultas.md](docs/03_primeras_consultas.md) y `sql/`
4. Pasar a [docs/04_visualizaciones.md](docs/04_visualizaciones.md)
5. Construir tableros con [docs/05_dashboards.md](docs/05_dashboards.md)
6. Consolidar criterios en [docs/06_buenas_practicas.md](docs/06_buenas_practicas.md)
7. Automatizar borradores con [docs/07_uso_de_ia_para_generar_cards.md](docs/07_uso_de_ia_para_generar_cards.md)

## Como usar este repositorio en el curso

1. Elegir una pregunta de negocio (ejemplo: "Que lineas tienen mas viajeros por dia?")
2. Buscar una consulta base en `sql/`
3. Crear una card en Metabase con esa consulta
4. Ajustar filtros y formato visual
5. Documentar la card en `cards_catalog/`
6. Integrar la card en un dashboard operativo

## Requisitos minimos

- acceso a Metabase
- acceso de lectura a PostgreSQL (esquema `dw_sae`)
- permisos para crear colecciones y dashboards en Metabase

## Convenciones usadas

- SQL orientado a PostgreSQL
- nombres de metrica claros (`total_expediciones`, `total_viajeros`, `recaudacion_total`)
- granularidad temporal explicita (`dia`, `semana`, `mes`)
