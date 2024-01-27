using Pkg

function check()
    Pkg.activate(".")
    Pkg.instantiate()
    Pkg.precompile()
end

if ARGS[1] == "check"
    check()
    println("check OK!")
end

if ARGS[1] == "test"
    Pkg.activate(".")
    Pkg.test()
end

if ARGS[1] == "format"
    using JuliaFormatter
    format("./test")
    format("./src")
end
