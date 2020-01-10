function e(x)
    n = 1
    res = 1.0
    for i in 1:30
        n *= i
        res += 1 / n;
    end

    res
end

println("e=", e(1))  # e=2.7182818284590455
