using ..AlgebraCore
using ..Tolerance
import Base: ==, isapprox, hash

"""
    ==(a::ScalarOp{T1}, b::ScalarOp{T2}) where {T1, T2}

Comparación exacta entre dos `ScalarOp`. Solo compara los valores internos, no los tipos.
"""
function ==(a::ScalarOp{T1}, b::ScalarOp{T2}) where {T1,T2}
    va, vb = promote(a.value, b.value)
    return va == vb
end

"""
    isapprox(a::ScalarOp, b::ScalarOp; kwargs...)

Comparación aproximada entre dos `ScalarOp`, utilizando el valor interno `value`.
Permite pasar tolerancias configurables.
"""
function isapprox(a::ScalarOp{T1}, b::ScalarOp{T2}) where {T1,T2}
    va, vb = promote(a.value, b.value)
    return isapprox(va, vb; atol=get_tolerance())
end

"""
    hash(a::ScalarOp, h::UInt)

Función hash requerida si se define `==`, para uso en diccionarios y sets.
"""
function hash(a::ScalarOp{T}, h::UInt) where {T}
    return hash(a.value, h)
end
