# Bitácora de Trabajo y Desarrollo

**Proyecto:** HRTech People Analytics — Equipo 8  
**Actividad:** Guía Práctica 08 — Desarrollo del Informe Ejecutivo y Reportería  
**Estado:** Completado / Listo para entrega  

---

## 1. Resumen de Actividades Realizadas

1. **Diseño de la Estructura Documental:**
   - Creación de los directorios `documentos/reporte` y `evidencias/reporte` en el repositorio local.
   - Definición del público objetivo (Junta Directiva y Jefaturas) y configuración de las preguntas de negocio basadas en retención, clima laboral y productividad territorial.
   - Integración de los lineamientos de privacidad del documento de gobernanza (seudonimización y agrupación N≥5) en las políticas de limitación del informe.

2. **Extracción e Interpretación de Visualizaciones:**
   - Consolidación de datos exportados desde el dashboard de Power BI correspondiente al periodo Q3 2025 – Q2 2026.
   - Generación de hallazgos estructurados bajo la metodología *Evidencia - Interpretación - Impacto - Decisión*.
   - Análisis de variables críticas: Identificación de una tendencia de desempeño decreciente (de 83.33 a 82.00) y detección de cuellos de botella geográficos (Sede San Miguel vs. Santa Tecla).

3. **Formulación del Plan de Acción:**
   - Elaboración de la Matriz de Recomendaciones priorizadas (Planes de carrera, ajuste de horas extra y acompañamiento en sedes rezagadas).
   - Creación de la Matriz de Trazabilidad para vincular los hallazgos con las métricas extraídas y asegurar la verificabilidad de los datos.
   - Redacción del Resumen Ejecutivo y consolidación del informe final en formatos DOCX y PDF.

---

## 2. Registro de Incidencias y Soluciones Técnicas

| # | Incidencia / Error | Causa Raíz | Solución Aplicada |
| :-: | :--- | :--- | :--- |
| **1** | Variación en métrica de Productividad | La métrica global en el documento base indicaba 78.53%, mientras el dashboard de Power BI calculó 78.88%. | Se priorizó el dato dinámico del dashboard (78.88%) para mantener consistencia con los gráficos visuales exportados. |
| **2** | Resolución en exportación de gráficos | Capturas de Power BI con paneles laterales visibles que reducían la legibilidad en el DOCX. | Se redimensionó la vista a "Ajustar a la página" en PBI y se utilizaron recortes limpios enfocados únicamente en el área de visualización de datos. |
| **3** | Restricciones de privacidad en el informe | Mostrar casos atípicos en departamentos pequeños podía violar la política de no reidentificación. | Se aplicó la regla de gobernanza establecida en la Guía 4, analizando métricas solo a nivel de sede y departamento sin llegar a granularidad de empleado. |

---

## 3. Entregables Generados

- **`Informe_Final_HRTech.docx` y `.pdf`**: Documento ejecutivo completo con control documental, resumen, hallazgos y matrices.
- **`bitacora_semana_08.md`**: Registro de actividades y decisiones tomadas durante la consolidación del reporte.
- **Capturas y exportaciones**: Guardadas en la carpeta de evidencias/reporte.