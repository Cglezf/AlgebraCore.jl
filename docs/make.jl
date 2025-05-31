using AlgebraCore
using Documenter

DocMeta.setdocmeta!(AlgebraCore, :DocTestSetup, :(using AlgebraCore); recursive=true)

makedocs(;
    modules=[AlgebraCore],
    authors="sglez",
    sitename="AlgebraCore.jl",
    format=Documenter.HTML(;
        canonical="https://Cglezf.github.io/AlgebraCore.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=["Home" => "index.md"],
    clean=true,
    checkdocs=:exports,
)

deploydocs(; repo="github.com/Cglezf/AlgebraCore.jl", devbranch="main")
