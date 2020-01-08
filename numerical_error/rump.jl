f(a,b) = 333.75*b^6+a^2*(11*a^2*b^2 - b^6 - 121*b^4 - 2) + 5.5*b^8 + a/(2*b)

a=77617.0
b=33096.0

println("Float64: ", f(a, b))
println("BigFloat: ", f(BigFloat(a), BigFloat(b)))