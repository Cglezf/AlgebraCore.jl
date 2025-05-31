# Changelog

Todas las modificaciones siguen el formato [Keep a Changelog](https://keepachangelog.com) y el versionado semántico [SemVer](https://semver.org).

## [0.1.0] – 2025-05-31

### 🆕 Versión inicial

Primera versión pública del paquete `AlgebraCore.jl`, centrado en operaciones algebraicas básicas y parametrizadas bajo el estilo `JuliaWay`.

#### ✨ Funcionalidades principales

- Definición del tipo `ScalarOp{T<:Number}`
- Soporte para operaciones: `add`, `sub`, `mul`, `div_safe`
- Múltiple despacho con tipos `Int`, `Float64`, `BigFloat`
- Tolerancia configurable: `get_tolerance`, `set_tolerance!`, `with_tolerance`

#### 🧪 Tests y validaciones

- Pruebas por tipo numérico (`@testset`)
- Comparaciones exactas y aproximadas (`==`, `isapprox`)
- Cobertura de validaciones algebraicas (errores por división por cero, coerción)

#### 🔍 Logging y benchmarks

- Registro informativo con `@info` y `@debug`
- Benchmarks reproducibles usando `BenchmarkTools`
- Reporte automático en `basic_bench_report.txt`

#### 📚 Documentación

- Estructura navegable generada con Documenter.jl
- Docstrings completas para todas las funciones públicas
