using Pkg

if ARGS[1] == "check"
    # BEGIN: Precompilation
    Pkg.activate(".")
    Pkg.instantiate()
    Pkg.precompile()

    println("check OK!")
end

if ARGS[1] == "test"
    Pkg.activate(".")
    Pkg.test()
end
