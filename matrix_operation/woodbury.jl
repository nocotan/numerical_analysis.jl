using LinearAlgebra

A = [3 1 2;
     1 3 1;
     1 0 1]

B = [1 0 2;
     1 3 6;
     2 2 0]

C = [1 0 0;
     0 1 1;
     1 1 2]

D = [0 0 2;
     1 0 1;
     2 2 1]

println("(LHS)=", inv(A+B*C*D))
println("(RHS))=", inv(A)-inv(A)*B*inv(inv(C)+D*inv(A)*B)*D*inv(A))