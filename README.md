# HRTechPeopleAnalytics - Proyecto Final

## Descripción del proyecto

**HRTechPeopleAnalytics** es un proyecto orientado al análisis, integración, limpieza y transformación de datos relacionados con Recursos Humanos mediante técnicas de **People Analytics**.

El proyecto trabaja con información proveniente de diferentes fuentes y formatos, con el propósito de construir conjuntos de datos consolidados, estructurados y preparados para procesos posteriores de análisis, visualización, generación de indicadores y desarrollo de modelos predictivos.


# Objetivo general

Construir un flujo de procesamiento de datos de Recursos Humanos que permita integrar, limpiar, transformar y preparar información proveniente de diferentes fuentes para su utilización en procesos de **People Analytics**.

---

# Estructura del proyecto

La organización general del proyecto es la siguiente:

```text
HRTechPeopleAnalytics_ProyectoFinal/
│
├── datos/
│   ├── fuentes/
│   └── procesados/
│
├── documentos/
│
├── notebooks/
│
└── README.md
```

---

# Descripción de las carpetas

## `datos/`

Contiene la información utilizada y generada durante las diferentes etapas del proyecto.

La carpeta se encuentra dividida en dos secciones principales:

```text
datos/
├── fuentes/
└── procesados/
```

Esta separación permite distinguir claramente entre los datos originales y los datos generados después de aplicar procesos de integración, limpieza o transformación.

---

## `datos/fuentes/`

Contiene las fuentes originales de información utilizadas durante el proyecto.

Estas fuentes pueden provenir de diferentes tecnologías o formatos, por ejemplo:

- archivos CSV;
- archivos JSON;
- bases de datos;
- scripts SQL;

Los datos contenidos en esta carpeta representan las fuentes iniciales utilizadas para realizar los procesos de extracción e integración.

Siempre que sea posible, los archivos originales deben conservarse sin modificaciones con el objetivo de mantener la trazabilidad de la información.

---

## `datos/procesados/`

Contiene los datasets generados como resultado de los procesos realizados durante el proyecto.

Entre los procesos que pueden generar nuevos archivos se encuentran:

- integración de fuentes;
- consolidación;
- limpieza;
- normalización;
- transformación;
- tratamiento de valores nulos;
- eliminación de duplicados;
- ingeniería de características;
- validación de calidad.

Los datos almacenados en esta carpeta representan versiones procesadas de la información y pueden utilizarse posteriormente para análisis, reportería, visualización o modelos predictivos.

---

## `documentos/`

Contiene la documentación relacionada con el desarrollo y gestión del proyecto.

En esta carpeta pueden almacenarse documentos como:

- políticas de gobernanza;
- bitácoras de trabajo;
- documentación técnica;
- decisiones tomadas durante el procesamiento;
- criterios de calidad;
- documentación sobre las fuentes de datos;
- informes;
- evidencias;
- documentación complementaria.

Esta carpeta permite mantener registro de las actividades realizadas y facilita la trazabilidad del proyecto.

---

## `notebooks/`

Contiene los notebooks de Jupyter utilizados para desarrollar las diferentes etapas del proyecto.

Cada notebook puede abordar uno o varios procesos específicos, por ejemplo:

- evaluación de fuentes;
- extracción de datos;
- integración de información;
- análisis de calidad;
- limpieza;
- transformación;
- ingeniería de características;
- análisis exploratorio;
- validación de resultados;
- generación de datasets procesados.

La utilización de varios notebooks permite mantener el proyecto organizado y separar las responsabilidades de cada etapa.

---
```

---

## Configuración del entorno virtual

Se recomienda utilizar un entorno virtual de Python para mantener aisladas las dependencias utilizadas durante el desarrollo.

## 1. Crear el entorno virtual

Desde la terminal de Visual Studio Code:

```powershell
python -m venv .venv
```

---

## 2. Activar el entorno virtual

En PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
```

Cuando el entorno esté activo debería aparecer algo similar a:

```text
(.venv)
```

al inicio de la línea de comandos.

---

# Instalación de dependencias

## 3. Actualizar pip

```powershell
python -m pip install --upgrade pip
```

---

---

# Metodología de trabajo

El procesamiento de los datos se realiza de manera progresiva mediante diferentes notebooks.

Cada notebook puede representar una etapa específica del proyecto o desarrollar varios procesos relacionados.

---

## 1. Evaluación de fuentes

Antes de realizar la integración de los datos se analizan las diferentes fuentes disponibles.

Durante esta etapa pueden revisarse aspectos como:

- formato de la fuente;
- estructura;
- cantidad de registros;
- cantidad de variables;
- tipos de datos;
- campos disponibles;
- identificadores;
- posibles relaciones con otras fuentes;
- valores faltantes;
- inconsistencias;
- posibles problemas de calidad.

El propósito de esta etapa es conocer las características de cada fuente antes de comenzar su procesamiento.

---

## 2. Extracción de datos

La información puede obtenerse desde distintas fuentes y tecnologías.

Entre las fuentes utilizadas en el proyecto pueden encontrarse:

```text
CSV
JSON
Bases de datos
SQL
APIs
```

Cada fuente puede requerir un procedimiento diferente de extracción.

Por ejemplo, los archivos CSV pueden ser cargados utilizando Pandas, mientras que una base de datos puede requerir una conexión mediante SQL.


# Generación de datos procesados

Los resultados obtenidos durante las diferentes etapas del proyecto deben almacenarse dentro de:

```text
datos/procesados/
```

Esta separación permite mantener claramente diferenciados:

```text
datos/fuentes/
```

y

```text
datos/procesados/
```

De esta manera, las fuentes originales permanecen disponibles mientras que los resultados de las transformaciones se almacenan de forma independiente.

---
