using LinearAlgebra

A = [1 1 -1; -2 0 1; 0 2 1]
B = inv(A)
E = B*A

println("A^{-1}=", B)
println("A*A^{-1}=", E)