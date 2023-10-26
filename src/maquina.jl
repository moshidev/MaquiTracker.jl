
include("reporte_sensores.jl")

# Struct Maquina
# Entidad

mutable struct Maquina

    datosTiempoReal::Vector{ReporteSensores}
    problema::Vector{String}
    estado::Int64

end