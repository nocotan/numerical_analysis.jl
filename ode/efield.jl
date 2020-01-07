using Plots

dt = 0.001
T = 20.0
vx_0 = -2
vy_0 = 1
x_0 = 1
y_0 = 1

q1_x = 5
q1_y = 4
q1 = 4
q2_x = -5
q2_y = -5
q2 = 10


function efield()
    t = 0
    x = x_0
    y = y_0
    vx = 0
    vy = 0

    xs = []
    ys = []

    while (t <= T)
        push!(xs, x)
        push!(ys, y)

        t += dt
        rx_1 = q1_x - x
        ry_1 = q1_y - y
        r_1 = sqrt(rx_1^2+ry_1^2)
        vx += ((rx_1*q1)/r_1^3)*dt
        vy += ((ry_1*q1)/r_1^3)*dt

        rx_2 = q2_x - x
        ry_2 = q2_y - y
        r_2 = sqrt(rx_2^2+ry_2^2)
        vx += ((rx_2*q2)/r_2^3)*dt
        vy += ((ry_2*q2)/r_2^3)*dt
        print(vx)

        x += vx * dt
        y += vy * dt

    end

    (xs, ys)
end

xs, ys = efield()

plot(xs, ys, label="", xlabel="x",ylabel="y", color=:cornflowerblue)
savefig("efield.png")