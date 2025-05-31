# AlgebraCore

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Cglezf.github.io/AlgebraCore.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Cglezf.github.io/AlgebraCore.jl/dev/)
[![Build Status](https://github.com/Cglezf/AlgebraCore.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Cglezf/AlgebraCore.jl/actions/workflows/CI.yml?query=branch%3Amain)

AlgebraCore.jl es un paquete de Julia para representar y operar con escalares algebraicos de forma tipada, segura y extensible. Está diseñado con enfoque profesional siguiendo el estilo `JuliaWay`, e incluye soporte para múltiples tipos numéricos (`Int`, `Float64`, `BigFloat`), tolerancia configurable para comparaciones, pruebas exhaustivas y benchmarks reproducibles.

---

## 🚀 Instalación

Para usar `AlgebraCore.jl`, clona este repositorio y actívalo en tu entorno de desarrollo:

```julia
julia> ]
pkg> dev /ruta/a/AlgebraCore
```

Si lo usarás en producción, se podrá registrar más adelante oficialmente.

---

## 🧩 Características

- Tipo paramétrico `ScalarOp{T<:Number}` para encapsular valores escalares
- Operaciones básicas con soporte genérico:
  - `add(a, b)`
  - `sub(a, b)`
  - `mul(a, b)`
  - `div_safe(a, b)`
- Comparaciones exactas (`==`) y aproximadas (`isapprox`) con tolerancia ajustable
- Validaciones seguras para errores algebraicos (como división por cero)
- Soporte para logging (`@info`, `@debug`) y configuración automática del logger
- Benchmarks reproducibles con `BenchmarkTools.jl`

---

## 🧪 Uso básico

```julia
using AlgebraCore

a = ScalarOp(3.0)
b = ScalarOp(4.0)

add(a, b)         # ScalarOp(7.0)
sub(b, a)         # ScalarOp(1.0)
mul(a, b)         # ScalarOp(12.0)
div_safe(b, a)    # ScalarOp(1.333...)
```

---

## ⚙️ Tolerancia configurable

```julia
using AlgebraCore.Tolerance

get_tolerance()             # 1e-5 (por defecto)
set_tolerance!(1e-6)        # Cambia la tolerancia global

with_tolerance(1e-4) do
    isapprox(ScalarOp(1.0), ScalarOp(1.00009))  # true
end
```

---

## 🔍 Logging

Si no se configura otro logger, el paquete activa uno por defecto:

```julia
@info "Operación realizada correctamente"
@debug "Detalles internos para depuración"
```

---

## 📊 Benchmarks

Los benchmarks se ejecutan con `BenchmarkTools.jl` y generan un reporte:

```bash
julia benchmark/basic_benchmark.jl
```

Salida en: `benchmark/basic_bench_report.txt`

---

## 📚 Documentación

La documentación se genera con `Documenter.jl`. Para verla localmente:

```bash
julia --project=docs -e 'using Documenter; include("docs/make.jl")'
```

---

## 📦 Estado del desarrollo

| Versión | Compatibilidad Julia | CI | Docs |
|--------|----------------------|----|------|
| `v0.1.0` | `1.12`+ | ✅ Pasó en CI | ✅ Generada |

---

## 📜 Licencia

Este proyecto está bajo la licencia MIT. Ver `LICENSE` para más detalles.

---

## ✍️ Autor

Desarrollado como parte de un programa de formación profesional en Julia para proyectos modulares y reproducibles en Ciencia de Datos y Álgebra Computacional.
