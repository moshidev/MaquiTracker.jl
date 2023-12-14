using maquitracker
using Test

const corriente = [1.57, 1.65, 1.72, 1.80, 1.87, 1.95, 2.02, 2.10, 2.17, 2.25]
const temp_aceite = [42.00, 44.00, 46.00, 48.00, 50.00, 52.00, 54.00, 56.00, 58.00, 60.00]

@testset "EVs" begin
    prog_bad = [0.06/(11-i) for i in 1:10]
    corriente_bad = vec([c * (1 + p) for c in corriente, p in prog_bad])
    @test true == EV_es_defectuosa(corriente_bad, repeat(temp_aceite, 10))
    
    prog_ok = [0.05/(11-i) for i in 1:10]
    corriente_ok = vec([c * (1 + p) for c in corriente, p in prog_ok])
    @test false == EV_es_defectuosa(corriente_ok, repeat(temp_aceite, 10))

    @test_throws DimensionMismatch EV_es_defectuosa([1.0], [1.0,2.0])
end
