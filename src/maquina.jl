
include("reporte_sensores.jl")

# Struct Maquina
# Entidad

mutable struct Maquina

    datosTiempoReal::Vector{ReporteSensores}
    problema::Vector{String}
    estado::UInt64

end