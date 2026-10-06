# Bitácora de Trabajo y Desarrollo

**Proyecto:** HRTech People Analytics — Equipo 8  
**Actividad:** Guía Práctica 04 — Gobernanza, Ética y Anonimización de Datos  
**Estado:** Completado / Listo para entrega  

---

## 1. Resumen de Actividades Realizadas

1. **Diseño del Marco de Gobernanza y Ética de Datos:**
   - **Clasificación de Privacidad:** Identificación y categorización de campos sensibles del dataset de personal (PII directos como `nombre_completo`, identificadores relacionales como `empleado_id`, datos financieros como `salario_mensual` y cuasi-identificadores como `edad`, `genero` y coordenadas geográficas).
   - **Definición de Políticas:** Elaboración del esquema de Control de Acceso basado en Roles (RBAC), reglas de Uso Aceptable (prohibición de reidentificación y decisiones automáticas) y políticas de retención/destrucción.
   - **Matriz de Riesgos:** Evaluación de riesgos éticos y de seguridad (reidentificación por cuasi-identificadores, sesgo algorítmico y fuga de PII en repositorios Git) con sus medidas de mitigación.

2. **Desarrollo del Cuaderno de Código (`guia_04_gobernanza_etica.ipynb`):**
   - Creación del cuaderno de Jupyter Notebook con celdas de documentación y código ejecutable en Python.
   - Implementación de la función de **Seudonimización mediante Hash SHA-256 con Salt** para los identificadores de empleados.
   - Eliminación directa de datos PII (`nombre_completo`).
   - Implementación de técnicas de **Generalización / Banding** para convertir salarios continuos y edades en rangos categóricos (`rango_salarial` y `rango_edad`).
   - Supresión de variables geográficas de alta precisión (`latitud`, `longitud`, direcciones exactas).
   - Generación automática y exportación del dataset procesado final (`dataset_anonimizado.csv`).

3. **Resolución de Incidencias Técnicas de Entorno:**
   - Diagnóstico y solución del error de Jupyter en VS Code (*"requires the ipykernel package"*).
   - Manejo de restricción de entorno administrado externamente por el gestor de paquetes `uv` (**PEP 668**).
   - Configuración e instalación exitosa de un entorno virtual aislado (`.venv`) con Python 3.12, `ipykernel`, `pandas` y `numpy`.

---

## 2. Registro de Incidencias y Soluciones Técnicas

| # | Incidencia / Error | Causa Raíz | Solución Aplicada |
| :-: | :--- | :--- | :--- |
| **1** | `requires the ipykernel package` en VS Code | El ejecutable de Python global gestionado por `uv` no tenía instalado el kernel de Jupyter. | Se creó un entorno virtual (`uv venv`) y se vinculó en el kernel de VS Code. |
| **2** | `externally-managed-environment` (PEP 668) | Protección de Python contra instalaciones globales con `pip`. | Se evitó la instalación global usando `uv venv --python 3.12` e instalando paquetes aislados mediante `uv pip install`. |
| **3** | Incompatibilidad potencial con Python 3.14 | Ciertas librerías de datos aún no tienen paquetes precompilados (*wheels*) para Python 3.14. | Se configuró el entorno virtual usando la versión estable **Python 3.12**. |

---

## 3. Entregables Generados

- **`guia_04_gobernanza_etica.ipynb`**: Cuaderno ejecutable con el pipeline completo de anonimización y generador de bitácora.
- **`bitacora_semana_04.md`**: Documento generado dinámicamente con la bitácora de desarrollo e incidencias.
- **`dataset_anonimizado.csv`**: Archivo de datos transformado listo para análisis seguro sin exposición de PII.
