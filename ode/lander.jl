using Plots

dt = 0.01
g = 9.80665
s = 2
a = 1.2


function lander(x_0, v_0)
    x = x_0
    v = v_0
    t = 0
    xs = []
    ts = []
    while (x > 0)
        f = t >= s ? a : 0
        v += (g-f*g)*dt
        x -= v*dt
        t += dt
        push!(xs, x)
        push!(ts, t)
    end

    (xs, ts)
end
xs, ts = lander(100, 0)

plot(ts, xs, label="lander",xlabel="t",ylabel="x", color=:cornflowerblue)
savefig("lander.png")