module AlgebraCore

include("Tolerance.jl")
using .Tolerance
using Logging

export ScalarOp, add, sub, mul, div_safe

"""
    ScalarOp{T}

Estructura que representa un escalar algebraico tipado. Sirve como base para definir operaciones algebraicas con múltiples despacho.
"""
struct ScalarOp{T<:Number}
    value::T
end # STRUCT

include("Arithmetic.jl")
include("Comparison.jl")

# Activa logger si no hay otro definido
if typeof(current_logger()) == NullLogger
    global_logger(ConsoleLogger(stderr, Logging.Info))
end

end # MOD
