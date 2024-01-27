# Criterios para la elección de las herramientas para ejecutar tests

Estos son los criterios para la complejidad del proyecto presente y potencialmente futura.

* Preferiblemente debe ser idiomática.
* Preferiblemente deben cooperar bien entre sí, en caso de ser varias.
* Debemos poder realizar aserciones.
* Debemos poder fácilmente ejecutar los tests, y recibir un informe con los resultados.

# Elección de la herramienta para testeo

Julia incluye una suborden que nos permite ejecutar una serie de tests.

En la [documentación de Julia](https://docs.julialang.org/en/v1/stdlib/Test/)
se pueden consultar las distintas aserciones que tenemos disponibles, así como 
cómo declarar sets de tests y ejecutarlos mediante la línea de comandos.

Por norma general más que alternativas existen utilidades que complementan a este
paquete, algunas incompatibles entre sí.

## Complementos destacables

En [JuliaHub](https://juliahub.com/ui/Search?q=test&type=packages):

* [TestTools](https://juliahub.com/ui/Packages/General/TestTools) Instala un ejecutable
en nuestra instalación de Julia que nos permite ejecutar los tests directamente desde
la línea de comandos, así como comprobar su cobertura o si el código tiene errores de estilo.
* [TestEnv](https://juliahub.com/ui/Packages/General/TestEnv) Utilidad que nos permite crear
un entorno de desarrollo temporal mediante el REPL para poder ejecutar el entorno de testeo
de un paquete cualquiera.
* [TestItemRunner](https://juliahub.com/ui/Packages/General/TestItemRunner) Permite escribir
tests unitarios dentro del propio código del paquete. Necesita ser una dependencia del
paquete. Permite asignarle una etiqueta al test. Permite opcionalmente deshabilitar las
dependencias del fichero para utilizar unas locales al test. TestTools no soporta ejecutar
este tipo de tests.
* [TestingUtilities](https://juliahub.com/ui/Packages/General/TestingUtilities) Conjunto de
macros que muestran información adicional acerca de por qué ha fallado un test, como en qué
difieren las variables que no eran iguales a las que se esperaban. También permite declarar
tests que aplican la misma lógica a distintos valores de entrada.

En [Github](https://github.com/search?q=test+language%3AJulia+&type=repositories):

* [HypothesisTests](https://github.com/JuliaStats/HypothesisTests.jl) Paquete que permite
hacer pruebas de hipótesis estadística. 
* [Jive](https://github.com/wookay/Jive.jl) Macros que pueden ayudar a depurar código.
* [ReferenceTests](https://github.com/JuliaTesting/ReferenceTests.jl) Macros que facilitan el
ejecutar pruebas que dependen en ficheros de referencia.
* [JuliaFormatter](https://github.com/domluna/JuliaFormatter.jl) Linter.

## Selección

* TestTools podría poder ahorrarnos el fichero `make.jl`, o parte de este, pero no nos permite
personalizar el framework de tests a utilizar, sólo es un wrapper para tres tipos de *tests runners*.
* TestEnv nos podría ser util si queremos utilizar dependencias de testeo mediante el REPL.
* TestItemRunner nos permitiría definir tests unitarios que podríamos clasificar y que realmente
podríamos ejecutar de forma independiente de una forma más sencilla que la "oficial".
* TestingUtilities podría ser util si estimamos que necesitamos más información acerca de por qué
han fallado los tests.
* HypothesisTests no son herramientas para testar código en sí, ni para ejecutar tests, pero nos puede ser útil si necesitamos aplicar tests estadísticos sobre conjuntos de datos.
* Jive Podría ser útil si tuviésemos ciertas dependencias externas sobre los tests complejas,
aunque algunos de los macros son para implementar anti-patrones.
* ReferenceTests será útil en el momento en que tengamos los datos con los que haremos los tests
en ficheros, o queramos crear estos.
* JuliaFormatter nos puede ayudar para ejecutar la tarea `check`, y para formatear nuestro código
de manera uniforme.

TestTools es incompatible con TestItemRunner. Este último nos ofrece más posibilidades y no es
limitante al contrario del primero.

Utilizamos JuliaFormatter para mejorar las capacidades de análisis estático de nuestra
tarea `check`.

A no ser que nos sintamos limitados, no utilizamos complementos a la biblioteca de aserciones.

A no ser que nos sintamos limitados, no utilizamos complementos al *test runner*.

# Proceso de desarrollo de tests

**Primero** decidimos el aspecto de la lógica de negocio sobre la que vamos a trabajar.
Intentamos buscar un aspecto sencillo, autocontenido, de la lógica de negocio. 
Nos decidimos por el issue número 45: No sabemos si una electroválvula está fallando.

**Segundo** diseñamos la interfaz. Seguimos los siguientes criterios.

* Preferimos tipos inmediatos, comunes, predecibles, antes que tipos propios.
    - De esta forma disminuimos el acoplamiento, sin disminuir la cohesión.
* Cuando trabajamos con algoritmos, nuestro método o función preferiblemente
dependerá únicamente en los datos estríctamente necesarios.
    - De esta forma explicitamos sus dependencias.
    - De esta forma aseguramos que no existan efectos secundarios.
* Preferiblemente se encargará de llevar a cabo un único concepto.
    - De esta forma evitamos dependencias innecesarias.
* Preferiblemente debe ser autoexplicativa.
    - De esta forma evitamos escribir más documentación de la necesaria,
    evitando que esta se pueda quedar potencialmente obsoleta.
* Preferiblemente iremos mejorando la interfaz iterativamente con cada
test que escribamos, a partir del ciclo test - implementa - verifica - mejora.
    - De esta forma trabajamos en un único aspecto del problema a cada vez.

Seguiremos refinando la interfaz en los pasos siguientes.

**Tercero** Una vez conocemos bien el problema y tenemos los tests de la interfaz
resueltos, seguimos añadiendo tests para poner a prueba la implementación.

Al estar trabajando sobre tests unitarios, aplicamos los siguientes criterios.

* La ejecución debe ser lo más rápida posible.
    - De esta forma minimizamos el tiempo de feedback. A menor tiempo de feedback,
    por norma general, aprendemos más rápido y mejor.
* Los tests deben ser independientes unos de otros.
    - De esta forma evitamos introducir fallos en el sistemos por modificar y añadir tests.
    - De esta forma permitimos que los tests se puedan ejecutar en paralelo.
* Deben ser deterministas.
    - De esta forma, en caso de error, podremos replicarlo.
* Sin necesidad de interacción con un humano.
    - De esta forma ayudamos a la automatización del test. Se auto-valida.
* La verificación debe ser exhaustiva, según nuestro contrato con el programador.
    - De esta forma comprobamos que el comportamiento es el esperado en todos los casos.
    *Sin embargo, estamos limitados a los casos que se nos ocurran. Si lo necesitásemos,
    podríamos considerar utilizar otras técnicas de testeo, como el fuzzing, para mejorar
    este aspecto.*
    - *En el caso de nuestro projecto, al ser un lenguaje interpretado con una comprobación
    de tipos y nombres pobre en etapa de pre-compilación, practicamos programación defensiva*.
