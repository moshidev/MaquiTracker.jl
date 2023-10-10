# Historias de usuario

## [HU001] Diagnóstico de fallo

Como Peluso, quiero que, dado una máquina con sensores
y capacidad de conectarse a Internet,
poder saber si una máquina está funcionando de forma incorrecta o se ha
degradado su funcionamiento.

Por experiencia, para los sensores que dispongo, sé que el sistema hidráulico
de una máquina funciona mal cuando:

* la temperatura del aceite del circuito es distinta a la típica.
* la presión del circuito es significativamente inferior a la típica.
  (Puede que hayan dejado de funcionar algunos pistones de la bomba).
* una electroválvula consume más corriente que de costumbre.
  (Puede que la corredera de la electroválvula esté dura). La medida
  de la corriente que recibo puede corresponder a una o a dos electroválvulas.

## [HU002] Mantenimiento preventivo

Como Peluso quiero que, dado una máquina con sensores
y capacidad de conectarse a Internet, poder estimar cuántos días faltan
para que falle esta, según el ritmo de uso pasado y las lecturas de sus
sensores.

Conozco:

* el número de árboles vibrados.
* el número de horas de trabajo en las que se han estado vibrando árboles.
* la temperatura del aceite del circuito.
* la presión del circuito.
* la corriente consumida por cada una o dos electroválvulas.
* la antiguedad de la máquina.
