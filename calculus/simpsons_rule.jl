f(x) = sin(x)

function simpsons_rule(a, b, n)
    h = (b - a) / (2*n)
    res = 0.0

    for i in 0:2*n
        if (i==0 || i==2*n)
            res += f(a + i*h)
        elseif (i % 2 == 1)
            res += 4 * f(a + i*h)
        else
            res += 2 * f(a + i*h)
        end
    end

    res * h / 3
end

println("Analytical=", 2)
println("Numerical=", simpsons_rule(0, pi, 100))