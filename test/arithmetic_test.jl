using Test
using AlgebraCore

function test_arithmetic()
    @testset "Arithmetic operations" begin
        a = ScalarOp(2)
        b = ScalarOp(3.5)

        @test add(a, b).value ≈ 5.5
        @test sub(a, b).value ≈ -1.5
        @test mul(a, b).value ≈ 7.0
        @test_throws DomainError div_safe(a, ScalarOp(0))
        @test isa(add(a, b), ScalarOp)
    end
end
