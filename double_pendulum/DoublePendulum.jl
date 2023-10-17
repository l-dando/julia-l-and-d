using Pkg
Pkg.activate("dp", shared=true)

using DynamicalSystems
using OrdinaryDiffEq
using GLMakie
using DataStructures: CircularBuffer



o = Observable(1)

l1 = on(o) do val
    println("Observable now has a value $val")
end

o[] = 2

