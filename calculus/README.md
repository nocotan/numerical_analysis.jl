# 微積分

## 数値微分

**数値微分**は，以下の微分の定義

<img src="https://latex.codecogs.com/gif.latex?f'(x)=\lim_{h\to0}\frac{f(x+h)-f(x)}{h}">

に則って，微小な正の数<img src="https://latex.codecogs.com/gif.latex?h">を決めて

<img src="https://latex.codecogs.com/gif.latex?f'(x)=\frac{f(x+h)-f(x)}{h}">

によって近似することで導関数を求める．これを2点近似と呼ぶ．

上記に従って，<img src="https://latex.codecogs.com/gif.latex?\sin">関数の数値微分を行う．ここで```h=1e-4```とする．

実行例
![](numerical_differentiation.png)

## 台形則による数値積分

<img src="https://latex.codecogs.com/gif.latex?\int^\pi_0\sin(x)dx">

台形則による数値積分は，定積分の近似値を級数和として求める．

微小区間<img src="https://latex.codecogs.com/gif.latex?[x_0,x_1]">の区間幅を<img src="https://latex.codecogs.com/gif.latex?h">とする．この区間内の肝数値を一次方程式で近似すると，積分値は

<img src="https://latex.codecogs.com/gif.latex?\int^{x_1}_{x_0}f(x)dx=\frac{h}{2}(f(x_0)+f(x_1))">

となるので，区間<img src="https://latex.codecogs.com/gif.latex?[a,b]">内の積分は各微小区間内での積分値の和で表されることから，以下のように書くことが出来る．

<img src="https://latex.codecogs.com/gif.latex?\int^b_af(x)dx=\frac{h}{2}(f(x_0)+f(x_1))+\frac{h}{2}(f(x_1)+f(x_2))+\cdots\\=\frac{h}{2}(f(x_0)+2f(x_1)+\cdots+f(x_n))">


上記に従って，<img src="https://latex.codecogs.com/gif.latex?\sin">関数の数値積分を行う．

```bash
Analytical=2
Numerical=1.9998355038874436
```

## Simpson則による数値積分


<img src="https://latex.codecogs.com/gif.latex?\int^\pi_0\sin(x)dx">

Simpson則による数値積分は，微小区間の関数値を二次方程式で近似する．

ある3点の<img src="https://latex.codecogs.com/gif.latex?y">座標を<img src="https://latex.codecogs.com/gif.latex?f(x_0)=y_0">，<img src="https://latex.codecogs.com/gif.latex?f(x_1)=y_1">，<img src="https://latex.codecogs.com/gif.latex?f(x_2)=y_2">とする．
ある二次方程式<img src="https://latex.codecogs.com/gif.latex?y=ax^2+bx+c">この３点を通り，<img src="https://latex.codecogs.com/gif.latex?x_2-x_1=h">，<img src="https://latex.codecogs.com/gif.latex?x_1-x_0=h">とすると，

<img src="https://latex.codecogs.com/gif.latex?a=\frac{y_0-2y_1+y_2}{2h^2}">

<img src="https://latex.codecogs.com/gif.latex?b=\frac{-(x_1+x_2)y_0+2(x_2+x_0)y_1-(x_0+x_1)y_2}{2h^2}">

<img src="https://latex.codecogs.com/gif.latex?c=\frac{x_1x_2y_0-2x_2x_0y_1+x_0x_1y_2}{2h^2}">

となる．この二次方程式を<img src="https://latex.codecogs.com/gif.latex?x_0">から<img src="https://latex.codecogs.com/gif.latex?x_2">まで積分すると，

<img src="https://latex.codecogs.com/gif.latex?\int^{x_2}_{x_0}(ax^2+bx+c)dx\\=\frac{a}{3}(x_2^3-x_0^3)+\frac{b}{2}(x_2^2-x_0^2)+c(x_2-x_0)\\=\frac{h}{3}(y_0+4y_1+y_2)">

積分区間が微小距離<img src="https://latex.codecogs.com/gif.latex?h">で<img src="https://latex.codecogs.com/gif.latex?2n">等分されているとすると，求める積分値は，

<img src="https://latex.codecogs.com/gif.latex?\int^b_af(x)dx=\frac{h}{3}(y_0+4_y_1+2_y_2+4y_3+2y_4+\cdots2y_{n-2}+4y_{2n-1}+y_{2n})">

上記に従って<img src="https://latex.codecogs.com/gif.latex?\sin">関数の数値積分を行う．

実行例
```bash
Analytical=2
Numerical=2.0000000006764735
```