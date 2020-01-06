# 微積分

## 数値微分

<img src="https://latex.codecogs.com/gif.latex?\sin">関数の数値微分を行う．

数値微分は，以下の微分の定義

<img src="https://latex.codecogs.com/gif.latex?f'(x)=\lim_{h\to0}\frac{f(x+h)-f(x)}{h}">

に則って，微小な正の数<img src="https://latex.codecogs.com/gif.latex?h">を決めて

<img src="https://latex.codecogs.com/gif.latex?f'(x)=\frac{f(x+h)-f(x)}{h}">

によって近似することで導関数を求める．これを2点近似と呼ぶ．

![](numerical_differentiation.png)

## 台形則による数値積分

<img src="https://latex.codecogs.com/gif.latex?\sin">関数の数値微分を行う．

<img src="https://latex.codecogs.com/gif.latex?\int^\pi_0\sin(x)dx">

数値積分は，定積分の近似値を級数和として求める．

微小区間<img src="https://latex.codecogs.com/gif.latex?[x_0,x_1]">の区間幅を<img src="https://latex.codecogs.com/gif.latex?h">とする．この区間内の肝数値を一次方程式で近似すると，積分値は

<img src="https://latex.codecogs.com/gif.latex?\int^{x_1}_{x_0}f(x)dx=\frac{h}{2}(f(x_0)+f(x_1))">

となるので，区間<img src="https://latex.codecogs.com/gif.latex?[a,b]">内の積分は各微小区間内での積分値の和で表されることから，以下のように書くことが出来る．

<img src="https://latex.codecogs.com/gif.latex?\int^b_af(x)dx=\frac{h}{2}(f(x_0)+f(x_1))+\frac{h}{2}(f(x_1)+f(x_2))+\cdots=\frac{h}{2}(f(x_0)+2f(x_1)+\cdots+f(x_n))">

```bash
Analytical=2
Numerical=1.9998355038874436
```