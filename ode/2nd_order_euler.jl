using Plots;gr()

T = 1000
dt = 0.001
y_0 = 0
g_0 = 1

function euler_method(y_0, g_0, T, dt)
    y = zeros(T)
    y[1] = y_0

    f = y_0
    g = g_0
    for t = 1:T-1
        y[t+1] = y[t] + dt*g
        g = g + dt*(6*g - 9*y[t+1])
    end

    y
end

exact_solution(t) = t*exp(3*t)

t = 0:dt:(T-1)dt
y = euler_method(y_0, g_0, T, dt)

plot(t, exact_solution, color=:cornflowerblue, label="Exact",xlabel="t",ylabel="y")
plot!(t, y, color=:coral, linestyle=:dash, label="Numerical",xlabel="t",ylabel="y")
savefig("2nd_order_euler.png")