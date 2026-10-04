# Bitácora semanal — Semana 02

**Equipo:** 8 — HRTech People Analytics  
**Fecha:** 2026-10-04

## Tema de la semana

**Limpieza de datos e ingeniería de características**

Durante esta semana se trabajó sobre el dataset consolidado generado en la etapa anterior, realizando un proceso de diagnóstico, limpieza, normalización y transformación de los datos con el objetivo de mejorar su calidad y preparar la información para las siguientes etapas del proyecto de People Analytics.

## Actividades realizadas

- Se cargó el dataset consolidado generado durante la integración de fuentes de la Semana 01.
- Se revisaron las dimensiones generales del dataset.
- Se analizaron los tipos de datos de cada una de las variables.
- Se convirtieron las columnas correspondientes a fechas al tipo `datetime`.
- Se realizó un diagnóstico de valores nulos y se calculó su porcentaje por columna.
- Se identificaron registros duplicados exactos.
- Se analizaron posibles duplicados lógicos utilizando como referencia la combinación de `empleado_id` y `periodo`.
- Se analizaron estadísticamente las principales variables numéricas relacionadas con productividad, calidad, asistencia, capacitación, ausencias, desempeño y salario.
- Se revisó la distribución de los registros por departamento, estado laboral y modalidad de trabajo.
- Se normalizaron los nombres de las columnas para facilitar su procesamiento.
- Se normalizaron los campos de texto eliminando espacios innecesarios e inconsistencias de formato.
- Se creó un índice promedio de satisfacción laboral utilizando las respuestas de la encuesta de clima.
- Se analizaron indicadores de satisfacción, productividad y desempeño agrupados por departamento.
- Se validaron reglas de calidad relacionadas con edades, horas de capacitación, ausencias, puntajes de desempeño y respuestas de encuestas.
- Se validó la consistencia entre la fecha de ingreso y la fecha de salida.
- Los valores inválidos detectados fueron convertidos a valores nulos para su posterior tratamiento.
- Se analizó el significado de los valores nulos antes de realizar modificaciones.
- Los valores nulos de `fecha_salida` fueron conservados debido a que pueden representar colaboradores que continúan activos en la organización.
- Se eliminaron los registros completamente duplicados.
- Se generaron nuevas variables mediante técnicas de ingeniería de características.
- Se construyó un reporte final de calidad del dataset.
- Se guardó el dataset limpio para utilizarlo en las siguientes etapas del proyecto.

## Ingeniería de características

Durante esta etapa se generaron las siguientes variables:

1. **antiguedad:** cantidad de años completos que el colaborador lleva trabajando en la organización.

2. **capacitaciones_recibidas:** estimación del número de capacitaciones recibidas utilizando las horas de formación registradas.

3. **nivel_desempeno_calculado:** clasificación del desempeño del colaborador en los niveles Bajo, Medio o Alto.

4. **riesgo_rotacion:** indicador generado utilizando satisfacción laboral, intención de permanecer y cantidad de ausencias.

5. **estado_colaborador:** clasificación del colaborador como Activo o Inactivo utilizando el estado laboral y la fecha de salida.

## Tratamiento de calidad de datos

Durante el proceso se aplicaron diferentes reglas de validación:

- Las edades menores de 18 años o mayores de 70 fueron consideradas inválidas.
- Las horas de capacitación negativas fueron consideradas inválidas.
- Los días de ausencia negativos fueron transformados en valores nulos.
- Los puntajes de desempeño fuera del rango de 0 a 100 fueron considerados inválidos.
- Las respuestas de las encuestas fuera de la escala de 1 a 5 fueron consideradas inválidas.
- Las fechas de salida anteriores a la fecha de ingreso fueron identificadas como inconsistentes.
- Se diferenciaron valores nulos que representan problemas de calidad de aquellos que tienen significado dentro del contexto empresarial.

## Información geográfica

El proyecto contempla información geográfica para permitir posteriormente análisis espaciales relacionados con People Analytics.

Columnas geográficas disponibles en el dataset:

pais, departamento_geo, municipio, distrito, latitud, longitud, zona_geografica

Registros con coordenadas faltantes: 20

Los valores faltantes de latitud y longitud se conservaron cuando existe información de ubicación suficiente para realizar posteriormente procesos de geocodificación.

Esta información permitirá desarrollar análisis geoespaciales en herramientas como ArcGIS Pro, incluyendo distribución territorial de indicadores, identificación de concentraciones y análisis de patrones espaciales.

## Resultados del procesamiento

- Registros finales: 168
- Columnas finales: 63
- Registros duplicados restantes: 0
- Total de valores nulos: 240
- Valores nulos en `fecha_salida`: 139
- Puntaje promedio de desempeño: 82.66
- Antigüedad promedio: 4.03 años
- Índice promedio de satisfacción laboral: 3.47 / 5

## Riesgo de rotación

- Riesgo bajo: 121 registros
- Riesgo medio: 21 registros
- Riesgo alto: 26 registros

## Estado de los colaboradores

- Activos: 139 registros
- Inactivos: 29 registros

## Evidencia

- Notebook desarrollado: `notebooks/guia_02_limpieza_ingenieria_caracteristicas.ipynb`
- Dataset utilizado: `datos/fuentes/dataset_consolidado.csv`
- Dataset generado: `datos/fuentes/dataset_limpio_guia02.csv`
- Documentación generada: `documentos/bitacora_semana_02.md`

## Decisiones tomadas

- Se conservó el dataset consolidado original sin sobrescribirlo.
- Las transformaciones se realizaron sobre el DataFrame de trabajo.
- Los nombres de las columnas fueron normalizados.
- Los campos de texto fueron estandarizados.
- Los valores fuera de rangos válidos fueron convertidos a nulos antes de tomar decisiones sobre su tratamiento.
- Los valores nulos de `fecha_salida` fueron considerados válidos cuando representan empleados activos.
- Los duplicados exactos fueron eliminados.
- Los duplicados lógicos fueron identificados utilizando claves de negocio para facilitar su revisión.
- Las nuevas características fueron creadas utilizando reglas comprensibles y reproducibles.
- La información geográfica disponible se conservó para su utilización posterior en análisis espaciales.
- Las coordenadas faltantes no fueron reemplazadas mediante promedios, debido a que deberán obtenerse mediante geocodificación utilizando la información territorial disponible.
- El dataset limpio se almacenó en un archivo independiente para mantener trazabilidad entre los datos originales y los datos procesados.

## Resultado de la semana

Como resultado de la Semana 02 se obtuvo un dataset de Recursos Humanos con un mayor nivel de calidad, consistencia y estructura.

La información quedó preparada para continuar con las siguientes etapas del proyecto, incluyendo análisis exploratorio, reportería, visualización, análisis geoespacial y futuros modelos de People Analytics.
