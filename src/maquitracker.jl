module maquitracker

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

end