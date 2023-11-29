# Elección

Dadas las necesidades del proyecto actuales y potencialmente futuras dado el
itinerario de la asignatura entendemos que el mejor *task runner* que podemos
utilizar es el propio lenguaje de programación, por distintas razones.

* Es idiomático. Nuevos contribuidores intuirían fácilmente dónde encontrar
los servicios, cómo mantenerlos, y cómo funcionan.
* Resulta en un repositorio consistente, manteniendo el mismo lenguaje en todo
el proyecto.
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
