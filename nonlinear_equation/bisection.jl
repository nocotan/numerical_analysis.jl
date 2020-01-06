using Plots;gr()

function f(x)
    x*x - 2
end

function bisection(a, b, max_iter)
    c = 1e+9
    error = zeros(max_iter)
    for i in 1:max_iter
        c = (a + b) / 2
        error[i] = abs(c - sqrt(2))
        f_c = f(c)

        if (f_c == 0)
            break
        elseif (f_c < 0)
            a = c
        else
            b = c
        end
    end

    (c, error)
end

a = 1.0
b = 2.0
max_iter = 20
c, error = bisection(a, b, max_iter)
t = 1:max_iter

plot(t, error, color=:purple, linewidth=3, label="Error",xlabel="t",ylabel="y", fmt=:png)