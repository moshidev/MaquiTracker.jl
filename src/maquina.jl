
include("reporte_sensores.jl")

using Interpolations

# Struct Maquina
# Entidad

mutable struct Maquina

    # Variables para representar el estado de una máquina así como los fallos que se detecten

    reportes::Vector{ReporteSensores}
    problema::Vector{String}
    estado::UInt64

    # Operaciones necesarias para poder realizar la deteccion de problemas de la máquina

    mediaTemperatura::Float32
    mediaPresion::Float32
    mediaEV::Float32

end