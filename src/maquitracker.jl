module maquitracker
using Statistics
export EV_es_defectuosa

# Variables para definir los intervalos de funcionamiento correcto
const maxPresion = 180
const minTemAceite = 40
const temAceiteAlta = 70
const temAceitePeligrosa = 90
const minEV = 1.0   # minimo valor de corriente de EV en amperios
const maxEV = 4.0   # maximo valor de corriente de EV en amperios

"""
EV_es_defectuosa(c::Vector{Float64}, t::Vector{Float64})

Esta función verifica si un electroválvula (EV) es defectuosa. Para ello, realiza las siguientes comprobaciones:

- Verifica que los vectores `c` y `t` tengan la misma longitud.
- Verifica que los vectores `c` y `t` no estén vacíos.
- Verifica que todos los elementos de `c` estén dentro del rango [minEV, maxEV].
- Calcula el factor de `c` y `t`, y luego calcula la pendiente promedio de este factor.
- Calcula el cambio relativo de la pendiente en porcentaje.
- Si el cambio relativo es mayor o igual al 0.05%, la función devuelve `true`, indicando que la EV es defectuosa. De lo contrario, devuelve `false`.

# Argumentos
- `c::Vector{Float64}`: Un vector que representa la corriente de la EV en amperios.
- `t::Vector{Float64}`: Un vector que representa la temperatura de la EV en grados Celsius.

# Devoluciones
- `Bool`: `true` si la EV es defectuosa, `false` en caso contrario.
"""
function EV_es_defectuosa(c::Vector{Float64}, t::Vector{Float64})
    if length(c) != length(t)
        throw(DimensionMismatch("Los vectores c y t deben tener la misma longitud"))
    end

    if length(c) == 0 || length(t) == 0
        throw(ArgumentError("Los vectores c y t no deben tener longitud 0"))
    end

    if any(x -> x < minEV || x > maxEV, c)
        return true
    end

    factor = c ./ t
    x = Vector{Float64}(1:length(factor))
    dfactor = diff(factor)
    dx = diff(x)
    pendiente = mean(dfactor ./ dx)
    relativo = (pendiente / mean(factor)) * 100
    return relativo >= 0.05
end
end
