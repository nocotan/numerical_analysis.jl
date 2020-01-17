using LinearAlgebra

A = [1 1 1 1;
     2 3 5 4;
     4 9 25 16;
     8 27 125 64]

function vandermonde(A)
    det = 1
    for j in 2:4
        for i in 1:j-1
            det *= (A[2,j]-A[2,i])
        end
    end

    det
end

println("vandermonde: ", vandermonde(A))
println("det(A): ", det(A))