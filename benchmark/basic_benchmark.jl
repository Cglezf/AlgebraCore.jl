using BenchmarkTools
using AlgebraCore
using AlgebraCore.Tolerance

types = (Int, Float64, BigFloat)

open("benchmark/basic_bench_report.txt", "w") do io
    println(io, "Benchmark: Numeric types comparison")
    for T in types
        println(io, "\n--- Type: $T ---")
        a, b = ScalarOp(T(6)), ScalarOp(T(3))

        println(io, "add: ")
        show(io, MIME"text/plain"(), @benchmark add($a, $b))
        println(io, "\nsub: ")
        show(io, MIME"text/plain"(), @benchmark sub($a, $b))
        println(io, "\nmul: ")
        show(io, MIME"text/plain"(), @benchmark mul($a, $b))
        println(io, "\ndiv_safe: ")
        show(io, MIME"text/plain"(), @benchmark div_safe($a, $b))
        println(io)  # separador
    end
end
