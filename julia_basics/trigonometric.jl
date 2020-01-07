using Plots

x = -pi/2:0.1:pi/2

plot(x, sin.(x))
plot!(x, cos.(x))
savefig("trigonometric.png")