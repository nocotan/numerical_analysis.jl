# 非線形方程式

## 1. 二分法による非線形方程式
二分法によって<img src="https://latex.codecogs.com/gif.latex?f(x)=x^2-2">の解を求める．
ここで初期値は<img src="https://latex.codecogs.com/gif.latex?a=1">，<img src="https://latex.codecogs.com/gif.latex?b=2">とする．

### 二分法
関数<img src="https://latex.codecogs.com/gif.latex?f(x)">が<img src="https://latex.codecogs.com/gif.latex?a<b">である<img src="https://latex.codecogs.com/gif.latex?a">と<img src="https://latex.codecogs.com/gif.latex?b">に対して，

<img src="https://latex.codecogs.com/gif.latex?f(a)<0">, <img src="https://latex.codecogs.com/gif.latex?f(b)>0">

を満たす連続関数であると仮定する．これに対し， 以下の反復計算によって解を求める．

ステップ1. <img src="https://latex.codecogs.com/gif.latex?f(\frac{a+b}{2})">の符号を調べる．

ステップ2.

(i) <img src="https://latex.codecogs.com/gif.latex?f(\frac{a+b}{2})<0">のとき，

<img src="https://latex.codecogs.com/gif.latex?a=\frac{a+b}{2}">

(ii) <img src="https://latex.codecogs.com/gif.latex?f(\frac{a+b}{2})>0">のとき，

<img src="https://latex.codecogs.com/gif.latex?b=\frac{a+b}{2}">

(iii) <img src="https://latex.codecogs.com/gif.latex?f(\frac{a+b}{2})=0">のとき，

求める解は<img src="https://latex.codecogs.com/gif.latex?\frac{a+b}{2}">であるので計算を終了する．

![](bisection.png)