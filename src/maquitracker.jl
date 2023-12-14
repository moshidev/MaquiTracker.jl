module maquitracker
    using Statistics
    export EV_es_defectuosa

    struct Medias
        # Variables necesarias para poder realizar la deteccion de problemas de la máquina
        mediaTemperatura::Float32
        mediaPresion::Float32
        mediaEV::Float32
    end

    # Struct Maquina
    # Entidad
    mutable struct Maquina

        # Variables para representar los fallos que se detecten

        problema::String
        medias::Medias

    end

    # Variables para definir los intervalos de funcionamiento correcto
    const maxPresion = 180
    const minTemAceite = 40
    const temAceiteAlta = 70
    const temAceitePeligrosa = 90

    function EV_es_defectuosa(c::Vector{Float64}, t::Vector{Float64})
        if length(c) != length(t)
            throw(DimensionMismatch("Los vectores c y t deben tener la misma longitud"))
        end
        
        factor = c ./ t
        return std(factor)*100 >= 0.05
    end
end