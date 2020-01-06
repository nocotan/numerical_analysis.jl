using Plots;gr()

f(x) = x*x - 2
df(x) = 2x

function newton(x_0, max_iter)
    x = x_0
    error = zeros(max_iter)
    for i in 1:max_iter
        x = x - f(x) / df(x)
        error[i] = abs(x - sqrt(2))

    end

    (x, error)
end

x_0 = 1.0
max_iter = 20

x, error = newton(x_0, max_iter)
print(error)
t = 1:max_iter

plot(t, error, color=:purple, linewidth=3, label="newton",xlabel="t",ylabel="Error", fmt=:png)