using Plots;gr()

T = 1000
dt = 0.001
y_0 = 1

# オイラー法
function euler_method(y_0, T, dt)
    y = zeros(T)
    y[1] = y_0

    for t = 1:T-1
        y[t+1] = (1+5*dt)y[t] + 4*dt
    end

    return y
end

function exact_solution(t)
    (y_0+4//5)*exp.(5*t) - 4//5
end

t = 0:dt:(T-1)dt
y = euler_method(y_0, T, dt)

plot(t, exact_solution, color=:cornflowerblue, label="Exact",xlabel="t",ylabel="y")
plot!(t, y, color=:coral, linestyle=:dash, label="Numerical",xlabel="t",ylabel="y")
savefig("1st_order_euler.png")