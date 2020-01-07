using Plots

dt = 0.01
g = 9.80665


function freefall(x_0, v_0)
    x = x_0
    v = v_0
    t = 0
    xs = []
    ts = []
    while (x > 0)
        v += g*dt
        x -= v*dt
        t += dt
        push!(xs, x)
        push!(ts, t)
    end

    (xs, ts)
end

xs_0, ts_0 = freefall(100, 0)
xs_100, ts_100 = freefall(100, -100)

plot(ts_0, xs_0, label="v_0=0",xlabel="t",ylabel="x", color=:cornflowerblue)
savefig("freefall_v0=0.png")
plot(ts_100, xs_100, label="v_0=-100",xlabel="t",ylabel="x", color=:coral)
savefig("freefall_v0=-100.png")
