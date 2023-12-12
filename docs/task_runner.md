# Elección

Tenemos distintas posibilidades. Por ejemplo:

* `make`. Permite establecer reglas del estilo `objetivo: dependencias`. Cada
línea del script de cada regla que componga un *Makefile* se ejecuta como si
fuese una nueva CLI UNIX Shell. Por defecto, las reglas se ejecutan cuando
no se pueda asegurar que las dependencias siguen en el mismo estado.

* `rake`. Aunque está escrito en Ruby, es un *task runner* de propósito general
parecido a `make`.

No hay alternativa específica para Julia excepto la que propone el lenguaje.

Dadas las necesidades del proyecto actuales y potencialmente futuras dado el
itinerario de la asignatura entendemos que uno de los *task runner*
más apropiados que podemos utilizar es el propio lenguaje de programación,
por distintas razones.

* Es idiomático. Nuevos contribuidores intuirían fácilmente dónde encontrar
los servicios, cómo mantenerlos, y cómo funcionan.
* Resulta en un repositorio consistente, manteniendo el mismo lenguaje en todo
el proyecto.
* Resuelve automáticamente las dependencias y cómo debe compilar el proyecto.
* Tiene herramientas para crear y publicar un paquete en Julia.
* Tiene herramientas y paquetes para desplegar un servicio accesible a través de
la red.
* Ofrece una amplia funcionalidad, abstraída mediante una API intuitiva.

# Razones de la elección

La interfaz de Julia para crear, pre-compilar, ejecutar proyectos, así como para
recuperar dependencias, versión del lenguaje, etc. está declarada en el propio
lenguaje en forma de paquete parte de la librería estándar (el paquete `Pkg`).

Si buscamos en el repositorio oficial de Julia, en los repositorios de sus librerías,
en los repositorios de aplicaciones populares escritas en Julia...
Descubrimos que la forma idiomática de definir pasos a seguir para realizar una tarea
es por medio del propio lenguaje. Por ejemplo, si queremos desplegar una aplicación,
ejecutamos mediante el REPL de julia una función `deploy()` que hayamos definido en algún
fichero. O, en nuestro caso, para ayudar a aquellos nuevos al lenguaje, ejecutando
`julia make.jl deploy`.

Para el resto de tareas recurrentes seleccionamos el proyecto `julia --project=.`,
nos metemos en el modo pkg pulsando `]`, y ya podemos hacer todas las operaciones que nos permite
el paquete `Pkg`.

# Por qué no comparamos con otras herramientas de propósito general

A lo mejor no estoy entendiendo bien, o no estoy sabiendo buscar correctamente, pero entiendo que
no tiene sentido comparar cualquier otro *task runner* con la solución que propone Julia, y no existen
equivalentes. Podríamos proponer herramientas como `make`, `rake`, `maven`, pero en última instancia
acabarían llamando a las funciones de Julia, por lo que entiendo que no tiene sentido en este caso
tan particular.
