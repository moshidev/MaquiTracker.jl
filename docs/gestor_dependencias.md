# Gestión de dependencias en Julia

Las herramientas de Julia nos permiten crear paquetes y publicarlos.
Cada paquete se identifica mediante un UUID, que al declararlo en
el fichero `Project.toml`, la herramienta `Pkg` resolverá antes
de ejecutar nuestro programa. 

Elegimos esta forma por ser la idiomática, y porque la comunidad
ofrece muchos bindings para utilidades que no son nativas de Julia
que se pueden resover y recuperar de esta forma.

Si necesitásemos algo más, según si es para desarrollar, para 
desplegar, ... Podríamos considerar otros gestores de dependencias
complementarios.

Por ejemplo:

* `git submodules`. Nos permite tener bajo un directorio el estado
de un commit de un repositorio de GIT externo.
