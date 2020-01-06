using Plots

f(x) = sin(x)

h = 1e-4
df(x) = (f(x+h) - f(x)) / h

x = -pi:0.01:pi
plot(x, f.(x), label="f(x)", xlabel="x", ylabel="y")
plot!(x, df.(x), label="df(x)", xlabel="x", ylabel="y")