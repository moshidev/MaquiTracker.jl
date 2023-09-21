# Personas

1. Usuario. Interesado en conocer el estado y estadísticas de la máquina.
2. Propietario. Tipo de usuario que tiene en su posesión una máquina. Interesado en poder establecer
   y gestionar sus parámetros así como permitir acceso de lectura a otros usuarios.
3. Nosotros. Cuando hablamos en primera persona del plural nos referimos a quien va a mantener el servicio.
   Interesado en solucionar los problemas que puedan surgir al cliente y en administrar y mantener la plataforma.

# Hito 0 - El usuario puede recuperar datos acerca del funcionamiento de la máquina.

## [HU001] El propietario puede recuperar un histórico de incidentes.

### Descripción
El propietario alquila la máquina a un tercero. Esta máquina está equipada con sensores en los componentes
críticos de la máquina. El propietario quiere recuperar un histórico de incidentes, de veces en los que
estos sensores han notificado lecturas que no caen en los rangos predefinidos para ese sensor en la máquina.

### Aclaraciones tras conversación
[ Pendiente ]

### Tests de aceptación
- [ ] Cuando no existen lecturas.
- [ ] Cuando no existen criterios.
- [ ] Crea un criterio para un sensor.
- [ ] Cuando existen lecturas pero el criterio no coincide con ninguna lectura.
- [ ] Dado un criterio de incidente para un sensor, cuando existen lecturas que cumplen este, lista los coincidentes con fecha, hora y geolocalización.

## [HU002] El usuario puede recuperar estadísticas de la productividad de la máquina.

### Descripción
El propietario alquila la máquina a un tercero. Esta máquina está equipada con sensores en los componentes
críticos de la máquina. El propietario quiere recuperar un histórico de incidentes, de veces en los que
estos sensores han notificado lecturas que no caen en los rangos predefinidos para ese sensor en la máquina.

### Aclaraciones tras conversación
[ Pendiente ]

### Tests de aceptación
- [ ] Cuando no existen lecturas.
- [ ] Cuando no existen criterios.
- [ ] Crea un criterio para un sensor.
- [ ] Cuando existen lecturas pero el criterio no coincide con ninguna lectura.
- [ ] Dado un criterio de incidente para un sensor, cuando existen lecturas que cumplen este, lista los coincidentes con fecha, hora y geolocalización.

# Hito 1 - Gestión de máquinas.

## [HU003] Se registra una máquina a nombre de un propietario.

### Descripción

Queremos registrar una máquina a nombre de un propietario.

Un propietario quiere poder acceder y modificar información de sus máquinas.
  - Un propietario quiere poder recuperar las estadísticas de productividad.
  - Un propietario quiere poder recuperar las incidencias de sus máquinas.
  - Un propietario quiere poder modificar los criterios de incidencia por lectura de sensor.

### Aclaraciones tras conversación

[ Pendiente ]

### Validación

[ Pendiente ]

## [HU004] El propietario permite a un usuario acceder a los datos de una máquina.

### Descripción

Un propietario quiere poder dar acceso de lectura a una o varias máquinas suyas a un usuario, propietario o
no de otras máquinas.

### Aclaraciones tras conversación

[ Pendiente ]

### Validación

- [ ] Un usuario propietario de otras máquinas.
- [ ] Otro usuario sin máquinas en propiedad.
- [ ] El usuario no puede modificar datos acerca de la máquina, únicamente verlos.
- [ ] Dado un usuario receptor y un propietario con al menos una máquina, cuando el propietario da acceso a un usuario a una o varias de sus máquinas, el usuario puede acceder a los datos de las máquinas compartidas.

## [HU005] Una máquina permite recuperar sus datos únicamente dentro del periodo de suscripción. 

### Descripción

Queremos cobrar por el servicio que proporcionamos a los propietarios y usuarios. Queremos permitir
almacenar y recuperar las estadísticas de productividad de la máquina y su histórico de incidentes
únicamente cuando estas acciones se realizan dentro del periodo de suscripción.

### Aclaraciones tras conversación

[ Pendiente ]

### Validación

- [ ] Después de modificar un periodo.
- [ ] Cuando no existe un periodo.
- [ ] Después de eliminar un periodo
- [ ] Cuando existe un periodo y estamos dentro del periodo.
- [ ] Cuando existe un periodo y estamos fuera del periodo.
- [ ] El administrador puede seguir accediendo a esta información independientemente del estado de la suscripción.
