using LinearAlgebra
using Combinatorics

A = [3 1 2 2;
     1 3 8 2;
     2 3 5 1]

B = [1 0 2;
     1 3 6;
     2 2 0;
     0 1 1]

function caychy_binet(A, B)
    comb = collect(combinations(1:size(A)[2], size(A)[1]))
    res = 0
    for S in comb
        res += det(A[:,S])*det(B[S,:])
    end

    res
end

println("det(AB)=", det(A*B))
println("cauchy-binet: ", caychy_binet(A, B))