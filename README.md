# MaquiTracker
Servicio de localización, estadística y mantenimiento predictivo para maquinaria agrícola.

* Software Libre: GNU GPL v3
* Documentación: https://github.com/moshidev/MaquiTracker/wiki
* Descripción del problema: [docs/problema.md](docs/problema.md)
* Configuración de Git: [docs/configuracion_git.png](docs/configuracion_git.png)

# Preámbulo
Existen distintos tipos de maquinaria agrícola para uso intensivo. Nuestra empresa, DigiControl Engineering S.L., ofrece soluciones para controlar electrónicamente estas máquinas. Entre estas destacan los vibradores de árboles y los atomizadores.

<div align="center">
  <table border="0">
    <tr>
      <img src="https://github.com/moshidev/MaquiTracker/assets/46326833/17d5ad8a-2b83-4d5b-80b7-f4f343d91b88" width=50% height=50%>
    </tr>
    <tr>
      <img src="https://github.com/moshidev/MaquiTracker/assets/46326833/80ef6a3f-f1c3-4c81-b2e0-3d8d322c7868" width=50% height=50%>
    </tr>
  </table>
</div>

Parte de nuestros clientes finales se dedican a alquilar maquinaria a terceros y a ofrecer servicios de mantenimiento y recolección.
Actualmente pueden consultar las estadísticas de uso de la máquina, aunque únicamente presencialmente.

# Descripción del problema
Los clientes que poseen más de una máquina o aquellos que alquilan a terceros quieren conocer el estado y uso de sus máquina de la forma más frecuente posible, sin estar presentes.

Concretamente.
* Quieren saber **cuánto** se ha utilizado la máquina, de forma que puedan realizar un **mantenimiento preventivo** eficiente.
* Quieren conocer **dónde** se ha utilizado la máquina y la **forma** en que se ha tratado cada árbol.
  - ¿Cuánto tiempo ha vibrado cada árbol? ¿Con qué presión en la pinza?
  - ¿Cuántas veces que se ha llenado la tolva?
  - ¿Cuánto líquido se ha pulverizado en cada árbol?
* Quieren saber **cómo** se ha utilizado la máquina
  - ¿El usuario ha realizado las pausas necesarias para el mantenimiento obligatorio de la máquina?
  - ¿Cuál ha sido la temperatura de funcionamiento?
