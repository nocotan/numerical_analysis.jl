function fermat_test(n::Int128)
    for k in 1:100
        a::Int128 = rand(2:n-1)

        if gcd(n, a) != 1
            return false
        end
        if a^(n-1) % n != 1
            return false
        end
    end

    true
end

println("57 is prime: ", fermat_test(Int128(57)))  # -> 57 is prime: false
println("23 is prime: ", fermat_test(Int128(23)))  # -> 23 is prime: true
