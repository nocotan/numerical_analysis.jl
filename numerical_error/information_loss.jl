x = 1e+10
for i in 1:10000000
    global x += 1e-8
end

y = 0.0
for i in 1:10000000
    global y += 1e-8
end
y += 1e+10

println("result1=", x)
println("result2=", y)