using Plots

t = 0:0.001:2pi
x = t.*cos.(t)
y = t.*sin.(t)

plot(x, y)
savefig("archimedean_spiral.png")