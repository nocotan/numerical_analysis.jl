# 対象とする関数
f(x) = sqrt(x+1) - sqrt(x)
# 有理化した関数
rf(x) = 1 / (sqrt(x+1) + sqrt(x))

println("x=1e+15       : ", f(1e+15))
println("x=1e+15(有理化): ", rf(1e+15))
println("x=1e+16       : ", f(1e+16))
println("x=1e+16(有理化): ", rf(1e+16))
