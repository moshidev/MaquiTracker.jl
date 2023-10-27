
include("reporte_sensores.jl")

# Struct Maquina
# Entidad

mutable struct Maquina

    datosTiempoReal::Vector{ReporteSensores}
    problema::Vector{String}
    estado::UInt64

    # Operaciones necesarias para poder realizar la deteccion de problemas de la máquina

    mediaTemperatura::Float32
    mediaPresion::Float32
    mediaEV::Float32

end