# Cloud Provider Analytics

Proyecto Integrador de la materia **Minería de Datos II** de ISTEA - Segundo Cuatrimestre 2026.

## Objetivo

Diseñar e implementar progresivamente una solución de datos para el caso **Cloud Provider Analytics**, contemplando procesamiento batch y streaming.

El proyecto trabajará con datos relacionados con clientes, usuarios, recursos cloud, soporte, facturación, marketing, NPS y eventos de uso.

## Tecnologías principales

- Python
- PySpark
- Spark Structured Streaming
- Parquet
- Cassandra / AstraDB

## Arquitectura

El proyecto utilizará un Data Lake organizado en las siguientes zonas:

- Landing
- Bronze
- Silver
- Gold

La arquitectura detallada será definida y documentada durante la primera etapa del proyecto.

## Estructura del repositorio

- `docs/`: documentación y diagramas.
- `data/`: datos locales y muestras.
- `notebooks/`: notebooks de exploración.
- `src/`: código fuente.
- `tests/`: pruebas.
- `config/`: archivos de configuración sin credenciales.
- `infra/`: archivos relacionados con infraestructura.
- `evidence/`: evidencias de ejecución.
- `DECISIONS.md`: registro de decisiones técnicas.

## Estado del proyecto

En desarrollo.

Actualmente se está trabajando en la **Primera Evaluación Parcial: Diseño y Fundación de Datos**.