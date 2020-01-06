using LinearAlgebra

A = [3 1; 2 2]

e, u = eigen(A)

println("Eigenvalues=", e)
println("D=", u)