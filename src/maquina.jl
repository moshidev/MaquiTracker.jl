
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

    # funcion para crear la interpolación de la series que queramos

    function create_interpolations(puntos, tipo)

        #interpolación lineal
        if tipo == 1
            return interpolate(puntos, Gridded(Linear()))
        
        #interpolación cuadrática
        elseif tipo == 2
            return interpolate(puntos, Gridded(Quadratic()))

        else
            println("Opción no válida")
        end
    end

end