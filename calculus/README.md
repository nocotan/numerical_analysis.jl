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

台形則による数値積分は，定積分の近似値を級数和として求める．

微小区間<img src="https://latex.codecogs.com/gif.latex?[x_0,x_1]">の区間幅を<img src="https://latex.codecogs.com/gif.latex?h">とする．この区間内の肝数値を一次方程式で近似すると，積分値は

<img src="https://latex.codecogs.com/gif.latex?\int^{x_1}_{x_0}f(x)dx=\frac{h}{2}(f(x_0)+f(x_1))">

となるので，区間<img src="https://latex.codecogs.com/gif.latex?[a,b]">内の積分は各微小区間内での積分値の和で表されることから，以下のように書くことが出来る．

<img src="https://latex.codecogs.com/gif.latex?\int^b_af(x)dx=\frac{h}{2}(f(x_0)+f(x_1))+\frac{h}{2}(f(x_1)+f(x_2))+\cdots\\=\frac{h}{2}(f(x_0)+2f(x_1)+\cdots+f(x_n))">


上記に従って，<img src="https://latex.codecogs.com/gif.latex?\sin">関数の数値積分を行う．

<img src="https://latex.codecogs.com/gif.latex?\int^\pi_0\sin(x)dx">


```bash
Analytical=2
Numerical=1.9998355038874436
```

## Simpson則による数値積分

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

<img src="https://latex.codecogs.com/gif.latex?\int^\pi_0\sin(x)dx">

実行例
```bash
Analytical=2
Numerical=2.0000000006764735
```

## Gauss–Legendre公式による数値積分
Gauss求積は，以下のようにガウス点<img src="https://latex.codecogs.com/gif.latex?x_i">と<img src="https://latex.codecogs.com/gif.latex?n">個の重み<img src="https://latex.codecogs.com/gif.latex?w_i">を用いて，関数<img src="https://latex.codecogs.com/gif.latex?f(x)">の定積分値を近似する．

<img src="https://latex.codecogs.com/gif.latex?\int^1_{-1}f(x)dx=\sum^n_{i=1}w_if(x_i)">

ここで，ガウス点として<img src="https://latex.codecogs.com/gif.latex?n">次のルジャンドル多項式の零点を用いて，重みを適切に選ぶことで上記の式が厳密に成立することがわかっている．これをGauss–Legendre公式と呼ぶ．

以下に，<img src="https://latex.codecogs.com/gif.latex?n">次のルジャンドル多項式<img src="https://latex.codecogs.com/gif.latex?P_n(x)">の根と重みをまとめたものを示す．

| n | Roots         | Weights      |
|---|---------------|--------------|
| 2 | 0.5773502692  | 1            |
|   | 0.5773502692  | 1            |
| 3 | −0.7745966692 | 0.5555555556 |
|   | 0.0           | 0.8888888889 |
|   | 0.7745966692  | 0.5555555556 |
| 4 | 0.8611363116  | 0.3478548451 |
|   | 0.3399810436  | 0.6521451549 |
|   | -0.3399810436 | 0.6521451549 |
|   | -0.8611363116 | 0.3478548451 |
| 5 | 0.9061798459  | 0.2369268850 |
|   | 0.5384693101  | 0.4786286705 |
|   | 0.0           | 0.5688888889 |
|   | -0.5384693101 | 0.4786286705 |
|   | -0.9061798459 | 0.2369268850 |

ここで，重みは，

<img src="https://latex.codecogs.com/gif.latex?w_i=\frac{2}{(1-x^2_i)[P'_n(x_i)^2]}">

で与えられる．

上記に従って以下の関数の数値積分を行う．

<img src="https://latex.codecogs.com/gif.latex?\int^1_{-1}\frac{1}{\sqrt{x^2+6x+13}}">

また，この積分の原始関数は以下のように計算される．

<img src="https://latex.codecogs.com/gif.latex?F(x)=\log{(x+3+\sqrt{x^2+6x+13})}+C">

これを元に，ガウス求積の結果と<img src="https://latex.codecogs.com/gif.latex?F(1)-F(-1)">の結果を比較する．

実行例

```bash
Gauss-Legendre=0.5622618876104194
F(1)-F(-1)=0.5622618881592671
```