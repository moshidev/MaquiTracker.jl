using maquitracker
using Test

const corriente = [2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9, 3.0]
const temp_aceite = [42.00, 44.00, 46.00, 48.00, 50.00, 52.00, 54.00, 56.00, 58.00, 60.00]

@testset "EVs" begin
    prog_bad = [0.06 / (11 - i) for i = 1:10]
    corriente_bad = vec([c * (1 + p) for c in corriente, p in prog_bad])
    @test true == EV_es_defectuosa(corriente_bad, repeat(temp_aceite, 10))
    @test true == EV_es_defectuosa(corriente_bad * 1.25, repeat(temp_aceite, 10))
    @test true == EV_es_defectuosa(corriente_bad / 1.25, repeat(temp_aceite, 10))

    prog_ok = [0.05 / (11 - i) for i = 1:10]
    corriente_ok = vec([c * (1 + p) for c in corriente, p in prog_ok])
    @test false == EV_es_defectuosa(corriente_ok, repeat(temp_aceite, 10))
    @test false == EV_es_defectuosa(corriente_ok * 1.25, repeat(temp_aceite, 10))
    @test false == EV_es_defectuosa(corriente_ok / 1.25, repeat(temp_aceite, 10))

    corriente_zero = copy(corriente_ok)
    corriente_zero[end-1] = 0.05
    @test true == EV_es_defectuosa(corriente_zero, repeat(temp_aceite, 10))

    @test_throws DimensionMismatch EV_es_defectuosa([1.0], [1.0, 2.0])
    @test_throws ArgumentError EV_es_defectuosa(Vector{Float64}(), Vector{Float64}())
    @test_throws MethodError EV_es_defectuosa(1.0, 'a')
end
