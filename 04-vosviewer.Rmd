# Análisis visual con VOSviewer

## Qué es VOSviewer

VOSviewer es una herramienta gratuita desarrollada por el Centre for Science and Technology Studies (CWTS) de la Universidad de Leiden para la **construcción y visualización de redes bibliométricas**. Permite representar visualmente la estructura intelectual de un campo de investigación a partir de los metadatos de un corpus bibliográfico.

A diferencia de NotebookLM, que analiza el *contenido* de los textos, VOSviewer analiza las *relaciones entre elementos bibliométricos*: términos, autores, revistas, referencias. Es una herramienta complementaria, no alternativa.

Descarga gratuita: [vosviewer.com](https://www.vosviewer.com)

## Tipos de análisis en VOSviewer

VOSviewer puede construir varios tipos de redes. Para este curso nos centraremos en la más útil para revisiones en ciencias sociales:

### Co-ocurrencia de términos (nuestro foco)

Analiza con qué frecuencia dos términos aparecen juntos en los títulos y/o abstracts del corpus. Los términos que co-ocurren frecuentemente aparecen próximos en el mapa y forman **clusters temáticos** — agrupaciones de conceptos que tienden a aparecer juntos en la literatura.

**Para qué sirve:** identificar los grandes temas del campo, detectar subtemas emergentes y visualizar la estructura conceptual de la literatura sobre [TEMA A ANALIZAR].

### Otros tipos de análisis (para referencia)

- **Co-autoría:** ¿qué autores o instituciones colaboran entre sí?
- **Co-citación:** ¿qué artículos o revistas son citados conjuntamente con frecuencia?
- **Acoplamiento bibliográfico:** ¿qué artículos comparten referencias?

Estos análisis son especialmente útiles para estudios bibliométricos más avanzados y se desarrollan en profundidad con **Bibliometrix** (véase nota al final del bloque).

## Importar el corpus desde Zotero

VOSviewer puede importar datos en varios formatos. El más directo para nuestro flujo de trabajo es el formato de texto plano de WoS o Scopus, que conserva títulos, abstracts y palabras clave.

### Exportación desde Zotero

1. En Zotero, seleccionar todos los registros del corpus limpio
2. `Archivo → Exportar biblioteca`
3. Seleccionar formato *BibTeX* o *RIS*

**Alternativa más directa:** si se buscó en WoS o Scopus, exportar directamente desde la base de datos en formato de texto plano antes de importar a Zotero, y guardar ese fichero para VOSviewer. VOSviewer tiene importadores nativos para los formatos de exportación de WoS y Scopus que preservan mejor los campos de abstract y palabras clave.

### Crear el mapa en VOSviewer

1. Abrir VOSviewer → *Create a map*
2. Seleccionar *Create a map based on bibliographic data*
3. Elegir el tipo de fichero (WoS, Scopus, RIS, BibTeX...)
4. Cargar el fichero exportado
5. Seleccionar tipo de análisis: *Co-occurrence* → *All keywords* (o *Title and abstract words*)
6. Establecer umbral mínimo de ocurrencias (recomendado: 3-5 para corpus de 200-500 referencias)
7. VOSviewer mostrará cuántos términos cumplen el umbral → hacer clic en *Next*

## Limpieza de términos

Este paso es **imprescindible** y frecuentemente omitido. VOSviewer extrae todos los términos que superan el umbral, pero muchos de ellos son irrelevantes: artículos, preposiciones, términos genéricos (*study*, *analysis*, *results*, *paper*) o variantes del mismo concepto (*student* / *students*).

### Limpieza manual

VOSviewer genera un listado de todos los términos seleccionados. Antes de visualizar, se puede desactivar los términos irrelevantes desmarcando la casilla correspondiente.

Términos que habitualmente conviene desactivar:
- Términos muy genéricos: *study*, *research*, *analysis*, *result*, *paper*, *approach*
- Variantes de términos ya incluidos: si está *student*, desactivar *students*
- Términos que corresponden al propio tema de búsqueda y aparecerán en todo el corpus

### Limpieza asistida por LLM

Para corpus grandes con centenares de términos, exportar la lista de términos como CSV y usar un LLM para sugerir cuáles eliminar o unificar:

```
Tengo una lista de términos extraídos automáticamente de los títulos 
y abstracts de un corpus bibliográfico sobre [TEMA A ANALIZAR]. 
Necesito limpiarla antes de visualizar la red de co-ocurrencias.

Por favor, identifica:
1. Términos genéricos que no aportan información temática
2. Variantes del mismo concepto que deberían unificarse
3. Términos que parecen errores de extracción

Lista de términos:
[PEGAR LISTA]
```

El LLM sugiere; el investigador decide. Algunos términos que el modelo propone eliminar pueden ser relevantes en el contexto específico del campo.

## Interpretación de clusters

Una vez limpio el mapa, VOSviewer muestra los términos agrupados en clusters codificados por color. Cada cluster representa una **constelación temática** — un conjunto de conceptos que tienden a aparecer juntos en la literatura.

### Cómo leer el mapa

- **Proximidad:** cuanto más cercanos dos términos, más frecuentemente co-ocurren.
- **Tamaño del nodo:** cuanto más grande, más frecuente es ese término en el corpus.
- **Color:** indica el cluster al que pertenece el término (asignado automáticamente por el algoritmo).
- **Distancia entre clusters:** clusters alejados entre sí representan subtemas relativamente independientes.

### Nombrar los clusters

VOSviewer no nombra los clusters — esa es tarea del investigador. Para nombrar cada cluster:

1. Identificar los 3-5 términos con nodos más grandes dentro del cluster
2. Leer algunos de los artículos más representativos de ese cluster
3. Proponer un nombre que capture la orientación temática del conjunto

<div class="actividad">
**Actividad:** Con el mapa de [TEMA A ANALIZAR] generado, identificad y nombrad los clusters principales. Para cada cluster, responded:
- ¿Qué términos lo definen mejor?
- ¿A qué tradición o subtema de investigación corresponde?
- ¿Hay términos en el límite entre dos clusters? ¿Qué sugiere eso?
</div>

### Fortalezas del análisis de co-ocurrencia

- Permite visualizar la estructura temática de un campo de forma rápida
- Identifica subtemas que podrían no ser evidentes en una lectura lineal
- Útil para detectar términos puente entre clusters (posibles áreas interdisciplinares)
- Reproducible: dado el mismo corpus y los mismos parámetros, el mapa es el mismo

### Limitaciones del análisis de co-ocurrencia

- **Depende de la calidad de los abstracts:** si los abstracts son pobres o inconsistentes, el mapa lo reflejará.
- **No captura el significado:** dos términos pueden co-ocurrir porque se contrastan, no porque estén relacionados positivamente.
- **Sensible al corpus:** pequeños cambios en el corpus (añadir o quitar 50 referencias) pueden cambiar significativamente la estructura de los clusters.
- **El algoritmo de clustering es automático:** los clusters son una aproximación estadística, no categorías conceptuales establecidas.
- **Sesgo hacia términos en inglés:** si el corpus mezcla idiomas, los términos en español o en otros idiomas quedarán subrepresentados.

## Ejercicio comparativo: VOSviewer vs. NotebookLM

Este ejercicio pone en diálogo los resultados de los dos bloques anteriores.

**Procedimiento:**

1. Anotar los clusters identificados en VOSviewer con sus términos principales
2. Volver a NotebookLM y pedir explícitamente una organización temática del corpus:

```
Organiza las fuentes cargadas en grupos temáticos. Para cada grupo, 
indica qué fuentes pertenecen a él y qué conceptos lo caracterizan.
```

3. Comparar las agrupaciones de ambas herramientas

**Preguntas para la discusión:**

- ¿Coinciden los clusters de VOSviewer con los grupos temáticos de NotebookLM?
- ¿Dónde divergen? ¿A qué puede deberse?
- ¿Qué información aporta cada herramienta que la otra no aporta?
- ¿Cómo reportarías estos resultados en la sección de métodos de una revisión?

<div class="nota">
**La divergencia es información.** Si VOSviewer y NotebookLM sugieren agrupaciones diferentes, no significa que una esté "equivocada". Cada herramienta captura una dimensión distinta del corpus: VOSviewer las co-ocurrencias estadísticas de términos, NotebookLM la interpretación semántica del contenido. Las diferencias merecen atención y análisis.
</div>

## Para profundizar: Bibliometrix y análisis avanzados

**Bibliometrix** es un paquete de R para análisis bibliométrico que ofrece funcionalidades más avanzadas que VOSviewer, incluyendo análisis de factor, evolución temporal de clusters, análisis de redes de co-autoría e instituciones, y mayor control sobre los parámetros del análisis.

Su interfaz web **Biblioshiny** permite acceder a las principales funcionalidades sin necesidad de programar en R, aunque el paquete completo requiere conocimientos básicos de R.

También en VOSviewer existen análisis más avanzados que quedan fuera del alcance de este curso:

- **Overlay maps:** mapas que añaden una variable temporal (año de publicación) o de impacto (número de citas) al mapa de co-ocurrencias, permitiendo visualizar la evolución del campo.
- **Edición manual de clusters:** reagrupación manual de nodos para ajustar la clasificación automática.
- **Análisis de co-citación y acoplamiento bibliográfico:** para identificar la estructura intelectual del campo con mayor precisión.

Estos análisis se desarrollarán en sesiones posteriores para quienes quieran profundizar en el análisis bibliométrico.
