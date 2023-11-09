
include("maquina.jl")

using Interpolations

# Struct Diagnostico
# Entidad

mutable struct Diagnostico

    maquina::maquina
    resumen::String

end