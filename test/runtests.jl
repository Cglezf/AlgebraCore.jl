using Logging
global_logger(ConsoleLogger(stderr, Logging.Info))

ENV["JULIA_DEBUG"] = "AlgebraCore"

using Test
using AlgebraCore
using AlgebraCore.Tolerance

include("arithmetic_test.jl")
include("comparison_test.jl")
include("tolerance_test.jl")

@testset "AlgebraCore Tests" begin
    test_arithmetic()
    test_comparison()
    test_tolerance()
end
