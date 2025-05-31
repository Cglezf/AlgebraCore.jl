using Test
using AlgebraCore

function test_comparison()
    @testset "Equality and approximate comparison" begin
        @test ScalarOp(5.0) == ScalarOp(5.0)
        @test ScalarOp(3) == ScalarOp(3.0)
        @test ScalarOp(1.0) != ScalarOp(2.0)
        @test isapprox(ScalarOp(1.0), ScalarOp(1.0000001))
        @test !isapprox(ScalarOp(1.0), ScalarOp(1.1))
        @test hash(ScalarOp(42)) == hash(ScalarOp(42.0))
    end
end
