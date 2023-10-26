
include("datos_tiempo_real.jl")

# Struct Maquina
# Entidad

mutable struct Maquina

    datosTiempoReal::Vector{EstructuraDatosTiempoReal}
    problema::Vector{String}
    estado::Int64

end