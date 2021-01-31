using Plots

f(t) = exp(im*t)
t = 0:0.01:2pi
z = f.(t)

x = real.(z)
y = imag.(z)

plot(x, y)
savefig("eulers_formula.png")  # -> 
