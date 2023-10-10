# Historias de usuario

Se puede consultar más información al respecto en
[funcionamiento_maquina.md](funcionamiento_maquina.md)

## [HU001] Diagnóstico de fallo

Como Peluso, quiero que, dado un histórico de lectura de sensores de una
máquina, poder saber si una máquina ha degradado su funcionamiento o está
funcionando de forma incorrecta.

Por experiencia, para los sensores que dispongo, sé que el sistema hidráulico
de una máquina funciona mal cuando:

* la temperatura del aceite del circuito es distinta a la típica.
* la presión del circuito es distinta a la típica.
* una electroválvula empieza paulativamente a consumir más corriente que
  de costumbre.

## [HU002] Mantenimiento preventivo

Como Peluso quiero que, dado un histórico de lectura de sensores de una
máquina, poder estimar cuántos días faltan para que falle esta, según
el ritmo de uso pasado y las lecturas de sus sensores.

Conozco:

* el número de árboles vibrados.
* el número de horas de trabajo en las que se han estado vibrando árboles.
* la temperatura del aceite del circuito.
* la presión del circuito.
* la corriente consumida por cada electroválvula.
* la antiguedad de la máquina.
