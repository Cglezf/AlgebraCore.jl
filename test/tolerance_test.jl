using Test
using AlgebraCore
using AlgebraCore.Tolerance

function test_tolerance()
    @testset "Tolerance Tests" begin
        a = ScalarOp(1.0)
        b = ScalarOp(1.0000001)

        with_tolerance(1e-8) do
            @test !isapprox(a, b)
        end

        with_tolerance(1e-6) do
            @test isapprox(a, b)
        end

        with_tolerance(1e-8) do
            @test !isapprox(a, b)
        end

        @test get_tolerance() ≈ 1e-5
        set_tolerance!(1e-5)
        @test get_tolerance() ≈ 1e-5
    end
end
