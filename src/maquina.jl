# Struct Maquina
# Entidad

mutable struct Maquina

    # Variables para representar los fallos que se detecten

    problema::String

    # Operaciones necesarias para poder realizar la deteccion de problemas de la máquina

    mediaTemperatura::Float32
    mediaPresion::Float32
    mediaEV::Float32

end