using LinearAlgebra

A = rand(Int8, 2, 2)
U, S, V = svd(A)

println("A=", A)
println("U=", U)
println("S=", S)
println("V=", V)
println("USV=", U*Diagonal(S)*V')