module Tolerance
using Logging: Logging

export set_tolerance!, get_tolerance, with_tolerance

const DEFAULT_TOLERANCE = Ref(1e-5)

"""
    set_tolerance!(tol::Real) -> Nothing

Establece la tolerancia global para las operaciones de comparación. El valor debe ser un número real.
"""
function set_tolerance!(tol::Real)
    @assert tol > 0 "La tolerancia debe ser un número positivo"
    return DEFAULT_TOLERANCE[] = tol
    Logging.@info "Tolerancia establecida a $tol"
end

"""
    get_tolerance() -> Real

Obtiene la tolerancia global actual para las operaciones de comparación.
"""
function get_tolerance()
    Logging.@debug "Obteniendo tolerancia actual: $(DEFAULT_TOLERANCE[])"
    return DEFAULT_TOLERANCE[]
end

"""
    with_tolerance(f::Function, tol::Real) -> Any

Ejecuta la función `f` con una tolerancia temporal `tol`.
Restablece el valor original al finalizar, incluso si ocurre un error.
"""
function with_tolerance(f::Function, tol::Real)
    prev = DEFAULT_TOLERANCE[]
    try
        DEFAULT_TOLERANCE[] = tol
        return f()
    finally
        DEFAULT_TOLERANCE[] = prev
        Logging.@debug "Tolerancia restaurada a $prev"
    end
end

end # MOD
