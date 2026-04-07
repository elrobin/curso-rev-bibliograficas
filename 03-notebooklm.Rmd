# Lectura y análisis con NotebookLM

## Qué es NotebookLM

NotebookLM es una herramienta de Google basada en modelos de lenguaje (actualmente Gemini) diseñada para trabajar con documentos propios. A diferencia de un chatbot genérico, NotebookLM **solo responde basándose en las fuentes que tú le proporcionas** — no accede a internet ni a su base de conocimiento general para responder preguntas sobre el contenido de tus documentos.

Esto lo convierte en una herramienta especialmente útil para revisiones bibliográficas: permite interrogar un corpus de textos de forma sistemática sin el riesgo de que el modelo "rellene" con información externa no verificada.

### Acceso y licencia

NotebookLM es gratuito con una cuenta de Google. La Universidad de Granada ofrece acceso a **Google Workspace for Education** (Go UGR) con cuentas `@go.ugr.es`, lo que incluye acceso a NotebookLM con las garantías de privacidad del acuerdo institucional con Google. Se recomienda usar siempre la cuenta institucional para trabajar con documentos de investigación.

Acceso: [notebooklm.google.com](https://notebooklm.google.com)

<div class="nota">
**Nota:** NotebookLM Plus (versión de pago) ofrece límites más altos de fuentes y consultas. Para los usos habituales de una revisión bibliográfica, la versión gratuita es suficiente.
</div>

## Paso a paso: crear un notebook y cargar fuentes

### 1. Crear un nuevo notebook

1. Acceder a [notebooklm.google.com](https://notebooklm.google.com) con la cuenta `@go.ugr.es`
2. Hacer clic en *Nuevo notebook*
3. Asignar un nombre descriptivo: por ejemplo, `[TEMA A ANALIZAR] - Corpus inicial`

### 2. Cargar fuentes

NotebookLM acepta varios tipos de fuentes:

- **PDFs** — la opción más habitual para artículos científicos
- **Google Docs y Google Drive** — útil para notas propias o documentos de trabajo
- **URLs** — páginas web y artículos online
- **Texto pegado directamente**
- **Vídeos de YouTube** (transcribe automáticamente)

Para una revisión bibliográfica, el flujo recomendado es:

1. Desde Zotero, seleccionar los artículos más relevantes del corpus (los que pasarán la primera criba de título y abstract)
2. Exportar o localizar los PDFs correspondientes
3. Cargarlos en NotebookLM agrupados por temática si el corpus es grande

**Límites actuales:** hasta 50 fuentes por notebook y 500.000 palabras por fuente.

<div class="aviso">
**Importante:** NotebookLM no es un repositorio de PDFs — trabaja sobre los documentos que tú le proporcionas. No tiene acceso a bases de datos bibliográficas ni puede buscar artículos por ti.
</div>

## Prompts efectivos: cómo interrogar el corpus

La calidad de las respuestas de NotebookLM depende en gran medida de cómo se formulan las preguntas. Algunos principios básicos:

### Prompts generales (sobre todo el corpus)

Útiles para obtener una primera visión de conjunto:

```
Resume los principales temas o líneas de investigación que aparecen 
en las fuentes cargadas.
```

```
¿Qué debates o tensiones teóricas se identifican en la literatura 
sobre [TEMA A ANALIZAR]?
```

```
¿Qué metodologías son más frecuentes en los estudios incluidos?
```

```
¿Qué aspectos de [TEMA A ANALIZAR] parecen menos estudiados 
según las fuentes disponibles?
```

### Prompts dirigidos a documentos específicos

NotebookLM permite seleccionar fuentes concretas antes de hacer una pregunta. Esto es especialmente útil para comparar posiciones o profundizar en un artículo:

1. En el panel de fuentes, seleccionar uno o varios documentos específicos
2. Formular la pregunta — NotebookLM responderá solo con base en esas fuentes

Ejemplos:

```
[Seleccionando 2-3 artículos teóricos]
¿Cómo definen estos autores el concepto de [concepto clave]? 
¿Hay diferencias entre sus definiciones?
```

```
[Seleccionando un artículo metodológico]
¿Qué limitaciones reconocen los autores en su propio estudio?
```

### Prompts para identificar estructura y gaps

```
¿Qué preguntas de investigación quedan sin responder 
en la literatura que has analizado?
```

```
Organiza las fuentes en grupos temáticos y explica 
el criterio de agrupación.
```

## Outputs: informes, infografías y presentaciones

NotebookLM puede generar varios tipos de outputs a partir del corpus:

### Notas generadas por IA

Desde el panel de notas, se pueden generar automáticamente:
- **Resumen del notebook** — síntesis general de todas las fuentes
- **Guía de estudio** — estructura jerarquizada de conceptos clave
- **Índice de contenidos** — organización temática de las fuentes
- **Línea temporal** — si las fuentes contienen referencias cronológicas

### Audio overview

NotebookLM puede generar un **podcast sintético** (en inglés) con dos voces que dialogan sobre el contenido del corpus. Es una forma rápida de obtener una primera orientación sobre los temas principales, aunque debe tomarse como punto de partida, no como síntesis definitiva.

### Exportar y compartir

Las notas generadas pueden exportarse como texto o Google Doc, y el notebook puede compartirse con colaboradores (útil para revisiones en equipo).

## Generar notas y añadirlas como fuentes

Una de las funcionalidades más potentes de NotebookLM es el **ciclo nota-fuente**: las notas que generas (o que genera la IA) pueden añadirse como fuentes adicionales, lo que permite construir una síntesis progresiva.

Flujo de trabajo recomendado:

1. Cargar el corpus inicial de PDFs
2. Generar notas temáticas con prompts dirigidos
3. Revisar y editar las notas (esto es fundamental — ver sección de limitaciones)
4. Añadir las notas revisadas como fuentes adicionales
5. Formular preguntas de síntesis que integren tanto los artículos originales como tus propias notas

Este proceso convierte NotebookLM en un **cuaderno de trabajo acumulativo** que va incorporando tu propia interpretación del corpus.

<div class="actividad">
**Actividad:** Con el corpus de [TEMA A ANALIZAR] cargado en NotebookLM:

1. Lanzad un prompt general para identificar los principales temas
2. Seleccionad 3-4 artículos del mismo cluster temático y preguntad sobre sus diferencias metodológicas
3. Generaduna nota de síntesis y revisadla críticamente: ¿qué ha capturado bien? ¿qué ha omitido o distorsionado?
4. Comparad los clusters que NotebookLM sugiere con los que obtendréis en VOSviewer (Bloque 4)
</div>

## Limitaciones y buenas prácticas

### Lo que NotebookLM hace bien

- Identificar rápidamente temas recurrentes en un corpus amplio
- Localizar pasajes relevantes dentro de documentos largos
- Generar primeras síntesis que sirven como punto de partida
- Ayudar a priorizar qué documentos merecen lectura profunda

### Lo que NotebookLM no hace bien

- **No razona sobre lo que no está en el corpus.** Si un artículo relevante no está cargado, NotebookLM no lo "sabe" — y no te avisará de su ausencia.
- **Puede generar síntesis plausibles pero incorrectas.** El modelo puede confundir autores, atribuir argumentos incorrectamente o simplificar matices importantes. *Siempre verificar en el documento original.*
- **No sustituye la lectura profunda.** NotebookLM puede decirte *que* un artículo habla de X, pero no puede reemplazar la comprensión crítica que se obtiene leyendo el artículo.
- **Tiende a nivelas diferencias.** En su síntesis, el modelo puede suavizar contradicciones o tensiones entre autores que son precisamente lo más interesante del corpus.

### Verificación de la información

NotebookLM incluye **citas con número de fuente** en sus respuestas, lo que permite localizar el pasaje original. Ante cualquier afirmación que vaya a usarse en el texto de la revisión:

1. Localizar la cita en el documento original
2. Leer el contexto completo del pasaje (no solo la frase citada)
3. Comprobar que la interpretación del modelo es coherente con la del autor

<div class="aviso">
**Mensaje central:** NotebookLM es una herramienta para **organizar y priorizar lecturas**, no para reemplazarlas. Su mayor valor está en ayudarte a identificar qué hay que leer en detalle y qué puede leerse de forma más tangencial. La síntesis final siempre es responsabilidad del investigador.
</div>

### Buenas prácticas resumidas

- Usar siempre la cuenta institucional (`@go.ugr.es`) para documentos de investigación
- Cargar fuentes verificadas, no solo abstracts
- Formular preguntas específicas, no preguntas abiertas muy generales
- Revisar siempre las citas en el documento original antes de usar una afirmación
- Tratar los outputs como borradores de trabajo, nunca como texto final
- Documentar qué preguntas se lanzaron y qué respuestas se obtuvieron (trazabilidad del proceso)
