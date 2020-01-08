a = 5
b = 7
da = 0.1
db = 0.3

dc_max = da + db


println("|(a+b)-(a+da)+(b+db)|: ", abs((a+b)-((a+da)+(b+db))), "<=", dc_max)
println("|(a+b)-(a-da)+(b+db)|: ", abs((a+b)-((a-da)+(b+db))), "<=", dc_max)
println("|(a+b)-(a+da)+(b-db)|: ", abs((a+b)-((a+da)+(b-db))), "<=", dc_max)
println("|(a+b)-(a-da)+(b-db)|: ", abs((a+b)-((a-da)+(b-db))), "<=", dc_max)
println("|(a-b)-(a+da)+(b+db)|: ", abs((a-b)-((a+da)-(b+db))), "<=", dc_max)
println("|(a-b)-(a-da)+(b+db)|: ", abs((a-b)-((a-da)-(b+db))), "<=", dc_max)
println("|(a-b)-(a+da)+(b-db)|: ", abs((a-b)-((a+da)-(b-db))), "<=", dc_max)
println("|(a-b)-(a-da)+(b-db)|: ", abs((a-b)-((a-da)-(b-db))), "<=", dc_max)