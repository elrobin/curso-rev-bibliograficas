# Búsqueda, merge y limpieza del corpus

## Visión general del flujo de trabajo

Antes de buscar, conviene tener claro el objetivo: no se trata de recopilar todo lo que existe sobre un tema, sino de construir un **corpus representativo, manejable y bien documentado** que permita responder a la pregunta de investigación.

El flujo de trabajo que seguiremos en este bloque es:

```
Búsqueda en bases de datos
        ↓
Exportar resultados por base de datos
        ↓
Importar en Zotero (colecciones separadas)
        ↓
Deduplicación en Zotero
        ↓
Limpieza asistida por LLM (casos ambiguos)
        ↓
Corpus limpio → listo para NotebookLM y VOSviewer
```

Cada paso deja rastro documental, lo que permite reportar el proceso en un diagrama PRISMA (véase Bloque 5).

## Bases de datos: pros y contras

No existe una base de datos perfecta. La elección depende del campo, del tipo de literatura que interesa y de los recursos disponibles. Para ciencias sociales, las tres fuentes principales son:

### Web of Science (WoS)

**Pros:**
- Alta calidad y selectividad en la indexación.
- Excelente cobertura de revistas de alto impacto en ciencias sociales.
- Permite búsquedas muy precisas con operadores booleanos avanzados.
- Exportación limpia y estructurada (compatible con Zotero y VOSviewer directamente).
- Datos de citación fiables y completos.

**Contras:**
- Cobertura limitada de literatura en español y de revistas latinoamericanas.
- No cubre literatura gris ni tesis doctorales.
- Acceso restringido (requiere suscripción institucional).
- Sesgo hacia ciencias naturales y biomedicina en detrimento de humanidades.

### Scopus

**Pros:**
- Mayor cobertura que WoS en número de revistas, especialmente en ciencias sociales y humanidades.
- Buena cobertura de literatura en español e iberoamericana.
- Interfaz de búsqueda potente y flexible.
- Exportación estructurada compatible con Zotero y VOSviewer.

**Contras:**
- Acceso restringido (requiere suscripción institucional).
- La mayor cobertura implica también mayor variabilidad en calidad.
- Datos de citación algo menos fiables que WoS para análisis bibliométricos precisos.

### Google Scholar

**Pros:**
- Acceso gratuito y universal.
- Cobertura amplísima: incluye preprints, tesis, literatura gris, libros y capítulos.
- Muy útil para campos emergentes o con literatura dispersa.
- Imprescindible para detectar literatura en español no indexada en WoS/Scopus.

**Contras:**
- No permite exportación masiva directa (límite de ~1000 resultados con Publish or Perish).
- Calidad de metadatos muy variable: errores frecuentes en autores, años y títulos.
- No ofrece operadores booleanos avanzados comparables a WoS/Scopus.
- Los resultados no son reproducibles: varían según el usuario, la sesión y el momento.

<div class="nota">
**Recomendación práctica:** Para una revisión en ciencias sociales, combinar WoS + Scopus como fuentes principales y Google Scholar como fuente complementaria para detectar literatura no indexada. Documentar siempre la fecha de búsqueda y la cadena de búsqueda exacta utilizada en cada base de datos.
</div>

## Diseño de la estrategia de búsqueda

Una buena estrategia de búsqueda equilibra **sensibilidad** (no perderse nada relevante) y **especificidad** (no obtener miles de resultados irrelevantes).

### Elementos básicos

**Términos de búsqueda:** identificar sinónimos, variantes ortográficas y términos en inglés y español. Para **[TEMA A ANALIZAR]**, los términos incluirían: `[TÉRMINOS A DEFINIR CON EL GRUPO]`.

**Operadores booleanos:**
- `AND` — restringe: ambos términos deben aparecer.
- `OR` — amplía: cualquiera de los términos.
- `NOT` — excluye: el segundo término no debe aparecer.

**Truncamiento:** el asterisco `*` permite recuperar variantes de una raíz. Por ejemplo, `academ*` recupera *academic*, *academics*, *academically*, etc.

**Campos de búsqueda:** decidir si buscar en título, resumen y palabras clave (`Title-Abstract-Keywords`) o solo en título. Buscar solo en título es más preciso pero puede perder resultados relevantes; buscar en texto completo genera demasiado ruido.

### Ejemplo de cadena de búsqueda

Para **[TEMA A ANALIZAR]**, una cadena de búsqueda en WoS podría tener esta estructura:

```
("término principal" OR "sinónimo 1" OR "sinónimo 2") 
AND 
("concepto relacionado 1" OR "concepto relacionado 2")
```

<div class="actividad">
**Actividad:** En grupos, diseñad la cadena de búsqueda para [TEMA A ANALIZAR]. Ejecutadla primero en WoS y anotad el número de resultados. Luego ajustad los términos para obtener un corpus manejable (objetivo orientativo: 200-500 referencias).
</div>

## Zotero: instalación y configuración básica

Zotero es un gestor de referencias gratuito y de código abierto que permite importar, organizar y exportar referencias bibliográficas. Es la herramienta central de este flujo de trabajo.

### Instalación

1. Descargar Zotero desde [zotero.org](https://www.zotero.org/download/)
2. Instalar el conector para el navegador (disponible para Chrome y Firefox) — permite guardar referencias directamente desde la web
3. Crear una cuenta gratuita en zotero.org (permite sincronización y hasta 300 MB de almacenamiento gratuito)

### Configuración recomendada para revisiones

Antes de importar, crear una **biblioteca de grupo separada** para cada revisión. Esto facilita el conteo de registros por base de datos y mantiene la biblioteca personal limpia.

Dentro de la biblioteca, crear una colección por base de datos:
```
📁 [TEMA A ANALIZAR]
   📂 WoS
   📂 Scopus
   📂 Google Scholar
```

### Importar resultados

Desde **WoS y Scopus**: exportar los resultados en formato `.ris` o `.bib` desde la interfaz de la base de datos. En Zotero, usar `Archivo → Importar` y seleccionar el fichero, asegurándose de marcar la opción *Importar a nueva colección*.

Desde **Google Scholar**: la exportación masiva directa no está disponible. La mejor opción es usar **Publish or Perish** (gratuito) para extraer resultados y exportarlos en formato compatible con Zotero.

## Deduplicación en Zotero

Al importar desde varias bases de datos, es inevitable que algunas referencias aparezcan en más de una. La deduplicación elimina estas repeticiones.

### Deduplicación automática en Zotero

Zotero identifica duplicados comparando título, DOI y año de publicación. Para acceder a la vista de duplicados:

1. En el panel izquierdo, hacer clic en *Elementos duplicados*
2. Aparecerán agrupados los registros que Zotero considera duplicados
3. Para cada grupo: seleccionar el registro *maestro* (el que tiene metadatos más completos) y hacer clic en *Combinar elementos*

**Limitación importante:** Zotero no permite combinar todos los duplicados de una vez — hay que hacerlo grupo a grupo. Para bibliotecas grandes, el plugin **Zoplicate** acelera este proceso.

<div class="aviso">
**Precaución:** No todos los elementos que Zotero identifica como duplicados lo son realmente. Un artículo de conferencia y su versión publicada en revista pueden tener títulos similares sin ser el mismo trabajo. Revisar siempre antes de combinar.
</div>

### Limpieza asistida por LLM

La deduplicación automática de Zotero no detecta todos los casos problemáticos. Algunos ejemplos habituales:

- Mismo artículo con ligeras variaciones en el título (preprint vs. versión publicada)
- Mismo autor con variantes ortográficas del nombre
- Metadatos incompletos o erróneos que impiden la detección automática

Para estos casos, se puede exportar la biblioteca a CSV (`Archivo → Exportar biblioteca → CSV`) y usar un LLM para identificar duplicados no obvios.

**Ejemplo de prompt para Claude:**

```
Tengo una lista de referencias bibliográficas exportadas de Zotero en CSV. 
Necesito identificar posibles duplicados que no fueron detectados 
automáticamente. Pueden ser duplicados por:
- Mismo artículo con título ligeramente diferente (preprint vs publicado)
- Mismo trabajo con metadatos incompletos en una de las versiones
- Variantes en el nombre del autor

Por favor, analiza las siguientes referencias y señala los pares o grupos 
que podrían ser el mismo trabajo, indicando por qué lo sospechas:

[PEGAR REFERENCIAS EN CSV]
```

El LLM no toma decisiones por el investigador — sugiere candidatos a revisar. La decisión final es siempre humana.

<div class="nota">
**También existen plugins de IA para Zotero** como Beaver o ZotAI que integran LLMs directamente en el flujo de trabajo de Zotero, permitiendo análisis de PDFs y gestión de metadatos. Son opciones a explorar para flujos de trabajo más avanzados, aunque requieren clave de API propia o suscripción.
</div>

## El corpus limpio: qué tenemos al final de este bloque

Al terminar el proceso de búsqueda, importación y deduplicación, debemos tener:

- Un **recuento documentado** de registros por base de datos (imprescindible para PRISMA)
- Un corpus de referencias sin duplicados, organizado en Zotero
- Los metadatos básicos completos: título, autores, año, revista, DOI, abstract

Este corpus es el punto de partida para los dos bloques siguientes: NotebookLM (análisis cualitativo del contenido) y VOSviewer (análisis visual de la estructura del campo).

<div class="actividad">
**Actividad:** Exportad el corpus limpio de Zotero en dos formatos:
1. `.ris` o `.bib` para importar en NotebookLM
2. Formato de texto plano (`.txt`) compatible con VOSviewer

Anotad el número de registros finales tras la deduplicación.
</div>
