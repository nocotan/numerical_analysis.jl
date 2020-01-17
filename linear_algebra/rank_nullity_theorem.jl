using LinearAlgebra

A = [1 2 3;
     1 2 4;
     0 2 1;]

println("rank=", rank(A))
println("nullity=", length(nullspace(A)))
println("dim(V)=", size(A)[2])