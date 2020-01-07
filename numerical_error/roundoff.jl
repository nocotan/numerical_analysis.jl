x = 0.0
for i in 1:1000000
    global x += 0.1
end

println("result=", x)