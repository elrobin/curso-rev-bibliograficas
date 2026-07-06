# Proceso de lectura

No todos los artículos de un corpus merecen el mismo nivel de atención. Una gestión eficiente del tiempo de lectura implica distinguir dos velocidades:

## Lectura en dos velocidades

<!-- Nota de renombrado: en v1 la columna se llamaba "Lectura de cribado". Por decisión explícita, "Lectura dirigida" = la misma "lectura de cribado" (título, abstract, conclusiones para decidir relevancia), solo cambia el nombre. No es contenido nuevo. -->

| Lectura dirigida | Lectura profunda |
|------------------------------------|------------------------------------|
| Título, abstract y conclusiones | Texto completo, incluyendo metodología, resultados y discusión |
| **Objetivo:** decidir si el artículo es relevante para la pregunta de investigación | **Objetivo:** extraer datos, evaluar calidad metodológica, comprender argumentos. Reservada para los artículos que superan la lectura dirigida |
| **Tiempo estimado:** 2-5 minutos por artículo | **Tiempo estimado:** 30-90 minutos por artículo |

El análisis con VOSviewer y NotebookLM (ver Apéndice) ayuda a priorizar qué artículos merecen lectura profunda y cuáles pueden quedar en lectura dirigida.

### Cómo abordar la lectura profunda: lectura por pasadas

"Texto completo" no significa leer de principio a fin en una sola sesión. Una técnica extendida en metodología de investigación es leer en pasadas sucesivas, ganando profundidad solo cuando el artículo lo justifica:

- **Pasada 1:** título, abstract, figuras/tablas y conclusiones: ¿vale la pena seguir? 🤔
- **Pasada 2:** metodología y resultados en detalle.
- **Pasada 3 (solo si el artículo es clave para tu revisión):** reconstruir el argumento completo y revisar las referencias propias del autor.

Otra opción es lo que hizo [Forchino et al., (2026)](https://doi.org/10.5281/zenodo.20643687), donde emplea técnicas bibliométricas para hacer una descripción general del campo y luego selecciona un *core* de documentos que analiza de manera cualitativa. Lo que ella llama un **diseño mixto secuencial**.

::: nota
👣 La mayoría de artículos de tu corpus solo necesitarán la Pasada 1 o 2. Reservar la Pasada 3 para un puñado de referencias centrales es lo que hace manejable la lectura profunda de un corpus grande.
:::

## Toma de notas

Una buena toma de notas durante la lectura profunda es la base de una síntesis de calidad. Algunos principios:

- Tomar notas en tus propias palabras, no copiando frases del artículo
- Registrar siempre la referencia completa junto a cada nota
- Distinguir entre lo que dice el autor y tu propia interpretación
- Anotar preguntas y dudas que surjan durante la lectura
- Registrar las limitaciones que el propio autor reconoce

**Herramientas útiles:**

- Zotero permite añadir notas a cada referencia, lo que mantiene todo centralizado (ver Apéndice)

- NotebookLM permite construir notas acumulativas vinculadas al corpus (ver Apéndice)

- Una hoja de extracción de datos (en Excel o Google Sheets) para sistematizar la información entre artículos. Un ejemplo mínimo de columnas:

  | Autor/Año | Método | Muestra | Hallazgo principal | Limitación declarada |
  |---------------|---------------|---------------|---------------|---------------|
  | Ejemplo (2023) | Encuesta transversal | N=340 | Correlación positiva X-Y | Muestra no representativa |

