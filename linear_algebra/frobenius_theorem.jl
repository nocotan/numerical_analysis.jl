A = [2 3 0;
     1 2 4;
     0 2 1]

f_m(X) = X^3 + 2X^2 + 3X + 5*Matrix{Int8}(I, 3, 3,)
f_s(X) = X^3 + 2X^2 + 3X + 5

fX = f_m(A)

λ1, λ2, λ3 = eigvals(A)

println("eigvals(f(X))=", eigvals(fX))
println("f(λ1)=", f_s(λ1),
        "f(λ2)=", f_s(λ2),
        "f(λ3)=", f_s(λ3))