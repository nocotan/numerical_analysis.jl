using Plots

f(x) = sin(x)

function trapezoidal_rule(a, b, n)
    h = (b - a) / n
    res = 0.0
    for i in 1:n
        if (i==0 || i==n)
            res += f(a+i*h)
        else
            res += 2 * f(a+i*h)
        end
    end

    res*h/2
end

println("Analytical=", 2)
println("Numerical=", trapezoidal_rule(0, pi, 100))