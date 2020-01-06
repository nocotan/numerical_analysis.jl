# 常微分方程式

## 1. Euler法による1階常微分方程式
以下の１階常微分方程式をEuler法によって解く．

<img src="https://latex.codecogs.com/gif.latex?\frac{dy}{dt}&space;=&space;5y&space;&plus;&space;4,\&space;y(0)&space;=&space;y_0">

### Euler法
関数<img src="https://latex.codecogs.com/gif.latex?y(t)">の<img src="https://latex.codecogs.com/gif.latex?t_i">まわりにおけるテイラー展開は，以下で表される．

<img src="https://latex.codecogs.com/gif.latex?y(t_{i&plus;1})&space;=&space;y(t_i)&space;&plus;&space;hy'(t_i)&space;&plus;&space;\frac{h^2}{2}y''(t_i)&space;&plus;\cdots,">

ここで，<img src="https://latex.codecogs.com/gif.latex?f(t_i,&space;y_i)&space;=&space;y'(t_i),&space;y_i&space;=&space;y(t_i),&space;y_{i&plus;1}&space;=&space;y(t_{i&plus;1})">とおくと，

<img src="https://latex.codecogs.com/gif.latex?y_{i&plus;1}&space;=&space;y_i&space;&plus;&space;hf(t_i,&space;y_i)&space;&plus;&space;\frac{h^2}{2}f'(t_i,&space;y_i)&plus;\cdots,">

と書ける．上記のテイラー展開を１次まで考えてそれ以降の項を無視するとき，この差分方程式の局所打ち切り誤差は<img src="https://latex.codecogs.com/gif.latex?O(h^2)">であると言い，これをEuler法と呼ぶ．まとめると，

<img src="https://latex.codecogs.com/gif.latex?y_{i&plus;1}&space;=&space;y_i&space;&plus;&space;hf(t_i,&space;y_i)">

となる．

![](1st_order_euler.png)
