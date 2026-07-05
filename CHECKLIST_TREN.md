# Checklist para el tren — Curso v2 (sesión de 2h)

La reestructuración ya está integrada directamente en la raíz del repo (no hay carpeta v2/ aparte). Los 5 `.Rmd` antiguos (01-intro, 02-busqueda, 03-vosviewer, 04-notebooklm, 05-sintesis) se han borrado y su contenido vive reorganizado en los 8 ficheros nuevos. La v1 sigue disponible en el historial de git y en el PDF `revision_bibliografica_v2.0.pdf` que ya tienes.

Lo que queda es **redacción de contenido propio**, que no necesita internet — solo RStudio abierto sobre esta carpeta.

## Antes de perder cobertura (o en cuanto puedas)

- [ ] Abrir el `.Rproj` en RStudio y comprobar que knitea sin errores (`bookdown::render_book("index.Rmd")`) con el contenido ya reubicado, antes de escribir nada nuevo.
- [ ] Revisar `git status`: verás `01-intro.Rmd` etc. como `deleted` y los 8 ficheros nuevos como `untracked`, más `index.Rmd` y `_bookdown.yml` como `modified`. Es el estado esperado — cuando hagas commit, todo queda documentado como un único cambio de reestructuración.

## Las 3 secciones que hay que escribir (offline, sin prisa)

Todas están marcadas en el texto con `⚠️ PENDIENTE` y un comentario `<!-- TODO -->` con la guía de qué incluir.

- [ ] **`01-intro-objetivos.Rmd` → "La sobrecarga informativa"** (1.1). La más corta de las tres: encuadre general de crecimiento de la literatura científica antes del párrafo ya existente sobre crecimiento de revisiones por LLMs.
- [ ] **`04-busqueda-seleccion.Rmd` → "Acotación del tema"** (4.1). La más sustanciosa: no había nada parecido en v1. Ya hay una semilla en `03-revision-sistematica.Rmd` (formato PICo, mencionado en Protocolo de trabajo) que puedes desarrollar aquí.
- [ ] **`03-revision-sistematica.Rmd` → "Herramientas de apoyo: Bibliometrix, LLMs"** (3.3). Un párrafo de enlace (2-3 frases) que presente el menú de herramientas y remita al apéndice. El contenido de Bibliometrix ya está reutilizado debajo, solo falta la frase puente.

Sugerencia de orden dado que 4.1 es la más larga: **4.1 → 1.1 → 3.3**.

## Ya resuelto, no hace falta tocar

- "Lectura dirigida" (`05-lectura.Rmd`) — renombrado directo de "lectura de cribado" de v1, sin contenido nuevo, según lo acordado.
- Las 4 referencias cruzadas rotas de v1 (menciones a "Bloque 3", "Bloques 3 y 4", "dos bloques anteriores/siguientes") están corregidas para apuntar al Apéndice.
- De paso, había un bug ya existente en v1 (línea que decía "véase Bloque 3" para NotebookLM, cuando en realidad NotebookLM era el Bloque 4 en v1). Queda corregido de forma natural al apuntar ahora al Apéndice.

## Revisión general (cuando tengas las 3 secciones escritas)

- [ ] Leer seguido los 7 bloques + apéndice para comprobar que el tono es homogéneo entre lo reutilizado y lo nuevo.
- [ ] Revisar los tiempos de la tabla de `index.Rmd` contra un ensayo real en voz alta — son una estimación mía, no un cronometraje.
- [ ] Decidir si el apéndice se entrega como documento aparte o como parte del mismo PDF/gitbook (hay una nota al respecto en `index.Rmd`).
- [ ] `bookdown::render_book("index.Rmd", "bookdown::pdf_book")` fallará porque falta `preamble.tex` — esto ya pasaba en v1, no es nuevo. Si quieres PDF final, dime y te lo genero yo del mismo modo que hice con la v1 (vía pandoc, sin depender de ese fichero), o creamos un `preamble.tex` mínimo.
- [ ] Al renderizar la web (`docs/`), sustituirá el contenido antiguo de v1 por la nueva estructura — es lo que querías. El `docs/` publicado actualmente sigue siendo el de v1 hasta que renderices.

## Qué SÍ necesitaría internet (déjalo para cuando tengas cobertura)

- Verificar cualquier cita/DOI nuevo que añadas en las secciones pendientes.
- `git push` de los cambios (puede esperar).
- Nada más — todo el resto es edición de texto y knit local.

## Revisión de referencias y enlaces (hecha)

- Las 13 menciones a "Bloque N" en el texto apuntan todas al bloque correcto según la estructura final (verificado uno a uno).
- Todas las imágenes referenciadas en los `.Rmd` existen en `images/` con el nombre exacto (incluidas las que tienen espacios/paréntesis, revisado el escapado `%20`).
- Los dos ficheros de datos (`data/savedrecs.txt` y `data/savedrecs (1).txt`) enlazados desde el apéndice existen y el escapado del nombre es correcto.
- Corregido: dos bloques `::: {#aviso}` con el mismo identificador (uno en `04-busqueda-seleccion.Rmd`, otro en `08-apendice-herramientas.Rmd`). No se referenciaban desde ningún sitio (`\@ref()`), así que no rompían nada, pero renombré el segundo a `{#aviso-vosviewer}` para evitar colisión de IDs si algún día generas todo en una sola página HTML.
- Comprobados los 14 enlaces externos (DOIs, PRISMA, VOSviewer, Zotero, YoSigoUGR, Zenodo, etc.). 8 responden con contenido y coinciden con lo citado (incluido el DOI del paper de equipos científicos, que confirma autores y título exactos). Los otros 6 (los DOIs de Wiley/Science/QSS/APA, más NotebookLM y YouTube) no devuelven contenido a un fetch automático por ser páginas con JavaScript o de editoriales con bloqueos — no es evidencia de que estén rotos, pero no pude confirmarlos del todo. Están en 02-tipos-revision.Rmd (los 3 DOIs de casos reales) y en index.Rmd (YouTube). Si tienes un minuto, ábrelos tú una vez para confirmar que resuelven a la página correcta.

## ⚠️ Aviso importante: no te fíes de `git status`/`git diff` corridos en ESTE entorno para `index.Rmd` y `_bookdown.yml`

Al integrar los cambios detecté que el montaje de esta sesión sirve una copia desfasada/truncada de esos dos ficheros concretos cuando se leen por comandos de shell (aunque el fichero real, el que tú verás en tu carpeta, está completo y correcto — lo verifiqué dos veces por otra vía). Esto hizo que `git add` estuviera a punto de dejar en el índice una versión cortada de esos dos ficheros, y en el intento de arreglarlo con `touch`/`git update-index` llegué a corromper temporalmente el índice de git (todo aparecía como borrado). Lo arreglé con `git reset` (que reconstruye el índice desde el último commit sin tocar el working tree) y confirmé con `git fsck` que el historial (HEAD y los 11 commits previos) está intacto — solo quedaron un puñado de blobs "dangling" inofensivos que git limpiará solo.

Qué significa esto para ti: cuando abras la carpeta en tu máquina (RStudio o terminal normal, no este sandbox), todo debería verse bien porque tu entorno no tiene este problema de montaje. Aun así:

- [ ] Abre `index.Rmd` y `_bookdown.yml` en un editor y confirma que se ven completos (deben terminar en "...Bibliometrix (R) — análisis bibliométrico avanzado (ver Apéndice)" y en "output_dir: \"docs\"" respectivamente). Si por lo que sea vieras algo cortado, dímelo y los regenero.
- [ ] Haz tú el primer `git add -A` / commit desde tu máquina en lugar de fiarte de cualquier estado ya "staged" que puedas heredar de esta sesión.
- [ ] Si `git` se queja de un `.git/index.lock` ya existente al hacer commit, bórralo sin miedo — no hay ningún proceso corriendo.
