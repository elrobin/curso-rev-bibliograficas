# La revisión sistemática

## El modelo PRISMA

PRISMA (Preferred Reporting Items for Systematic Reviews and Meta-Analyses) es el estándar más extendido para reportar revisiones sistemáticas. No es un protocolo de investigación en sí mismo, sino una **guía de reporte**: establece qué información debe incluirse en el manuscrito para que la revisión sea transparente y reproducible.

La versión vigente es **PRISMA 2020**, que actualizó la versión de 2009 para incorporar los cambios en las prácticas de revisión sistemática, incluyendo la búsqueda en registros de preprints y el uso de herramientas automatizadas.

### El diagrama de flujo PRISMA

El elemento más reconocible de PRISMA es su [diagrama de flujo](https://www.prisma-statement.org/prisma-2020-flow-diagram), que documenta el proceso de identificación, cribado y selección de estudios:

![](images/ejemploPrisma.png)

Los recuentos para completar este diagrama se obtienen directamente del proceso documentado en Zotero (ver Apéndice).

### PRISMA en ciencias sociales

El uso de PRISMA en ciencias sociales requiere algunas adaptaciones. La heterogeneidad metodológica de los estudios en ciencias sociales hace que los criterios de inclusión/exclusión sean más complejos y que la síntesis cuantitativa (meta-análisis) sea menos frecuente.

En ciencias sociales es habitual usar **síntesis narrativa estructurada** en lugar de meta-análisis, con tablas de extracción de datos que permiten comparar estudios de forma sistemática aunque no cuantitativa.

## Protocolo de trabajo

Para una revisión sistemática rigurosa, el protocolo debe definirse **antes** de realizar la búsqueda, no después. Esto incluye:

-   Pregunta de investigación (en formato PICo u otro marco estructurado) — *ver también "Acotación del tema" en el Bloque 4*
-   Criterios de elegibilidad (inclusión y exclusión)
-   Fuentes de información y estrategia de búsqueda
-   Proceso de selección de estudios (número de revisores, manejo de discrepancias)
-   Proceso de extracción de datos
-   Evaluación del riesgo de sesgo

## Herramientas de apoyo: Bibliometrix, LLMs

<!-- TODO (PENDIENTE DE REDACTAR - sí o sí): esta sección es nueva como síntesis unificada.
En v1 este contenido estaba disperso: Bibliometrix era un párrafo suelto al final del capítulo de VOSviewer, y el uso de LLMs aparecía por separado en la limpieza de Zotero, la limpieza de tesauro de VOSviewer y en todo el capítulo de NotebookLM.
Sugerencia de estructura para el párrafo de enlace (2-3 frases, antes del resumen de Bibliometrix reutilizado abajo):
- Frase 1: en la revisión sistemática, buena parte del trabajo mecánico (deduplicar, limpiar tesauros, extraer datos, mapear la estructura del campo) se puede apoyar en herramientas específicas.
- Frase 2: enumerar brevemente cuáles: Zotero (gestión/deduplicación), VOSviewer (mapas de co-ocurrencia), Bibliometrix (análisis bibliométrico avanzado en R), LLMs (limpieza asistida, lectura dirigida vía NotebookLM).
- Frase 3: remitir al apéndice para el detalle práctico de cada una. -->

⚠️ **PENDIENTE: redactar el párrafo de enlace que presenta el menú de herramientas antes del resumen de Bibliometrix.**

**Bibliometrix** es un paquete de R para análisis bibliométrico que ofrece funcionalidades más avanzadas que VOSviewer, incluyendo análisis de factor, evolución temporal de clusters, análisis de redes de co-autoría e instituciones, y mayor control sobre los parámetros del análisis.

Su interfaz web **Biblioshiny** permite acceder a las principales funcionalidades sin necesidad de programar en R, aunque el paquete completo requiere conocimientos básicos de R.

Para el resto de herramientas de apoyo (Zotero, VOSviewer y NotebookLM), incluyendo instalación, flujo de trabajo paso a paso y prompts de ejemplo, ver el **Apéndice: Herramientas de apoyo**.
