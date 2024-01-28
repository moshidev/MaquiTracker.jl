using maquitracker
using Test

const presion_media_ok = [170.0, 90.0, 250.0, 170.0]
const presion_media_bad = [182.0, 90.0, 250.0, 183.0]
const tiempo_ok = [15.0, 0.05, 0.05, 15.0]
const tiempo_bad = [15.0, 0.1, 0.1, 0.05]

@testset "filtra_golpes_de_ariete" begin
    @test true == presion_ok(presion_media_ok, tiempo_ok)
    @test false == presion_ok(presion_media_ok, tiempo_bad)
end

@testset "identifica_presion_superior" begin
    @test false == presion_ok(presion_media_bad, tiempo_ok)
    @test false == presion_ok(presion_media_bad, tiempo_bad)
end

@testset "presion_ok_lanza_excepciones" begin
    # Comprueba que la función lanza excepciones
    @test_throws DimensionMismatch presion_ok([1.0], [1.0, 2.0])
    @test_throws ArgumentError presion_ok(Vector{Float64}(), Vector{Float64}())
    @test_throws MethodError presion_ok(1.0, 'a')
end
