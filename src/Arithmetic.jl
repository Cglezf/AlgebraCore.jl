using ..AlgebraCore

"""
    add(a::ScalarOp, b::ScalarOp)

Suma dos objetos `ScalarOp`, promoviendo sus tipos antes de operar.
"""
function add(a::ScalarOp{T1}, b::ScalarOp{T2}) where {T1,T2}
    T = promote_type(T1, T2)
    va, vb = promote(a.value, b.value)
    return ScalarOp{T}(va + vb)
end

"""
    sub(a::ScalarOp, b::ScalarOp)

Resta dos objetos `ScalarOp`, promoviendo sus tipos antes de operar.
"""
function sub(a::ScalarOp{T1}, b::ScalarOp{T2}) where {T1,T2}
    T = promote_type(T1, T2)
    va, vb = promote(a.value, b.value)
    return ScalarOp{T}(va - vb)
end

"""
    mul(a::ScalarOp, b::ScalarOp)

Multiplica dos objetos `ScalarOp`, promoviendo sus tipos antes de operar.
"""
function mul(a::ScalarOp{T1}, b::ScalarOp{T2}) where {T1,T2}
    T = promote_type(T1, T2)
    va, vb = promote(a.value, b.value)
    return ScalarOp{T}(va * vb)
end

"""
    div_safe(a::ScalarOp, b::ScalarOp)

Divide dos objetos `ScalarOp`, promoviendo sus tipos antes de operar. Validación para evitar división por cero.
"""
function div_safe(a::ScalarOp{T1}, b::ScalarOp{T2}) where {T1,T2}
    T = promote_type(T1, T2)
    va, vb = promote(a.value, b.value)
    if iszero(vb)
        throw(DomainError("Division by zero is not allowed."))
    end
    return ScalarOp{T}(va / vb)
end
