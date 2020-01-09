# 線形代数

juliaには線形代数関連のパッケージである```LinearAlgebra```が存在し，これを利用することが出来る．

* パッケージの追加
```julia
(v1.3) pkg> add LinearAlgebra
```

* パッケージの利用
```julia
using LinearAlgebra
```

## 行列の定義
Juliaで行列の定義をしてみる．
適当な2次，3次および4次正方行列を定義して，出力する．

実行例

```bash
[1 2; 3 4]
[5 6 7; 8 9 10; 10 9 8]
[11 12 13 14; 15 16 17 18; 19 20 21 22; 23 24 25 26]
```

## 行列演算
行列の基本演算を試す．
<img src="https://latex.codecogs.com/gif.latex?A=\left(\begin{array}{ccc}2&3&0\\1&2&4\\0&2&1\end{array}\right)">として，この行列同士の加算，減算，スカラー倍，行列積を試す．

実行例

```bash
A=[2 3 0; 1 2 4; 0 2 1]
A+A=[4 6 0; 2 4 8; 0 4 2]
A-A=[0 0 0; 0 0 0; 0 0 0]
A*A=[7 12 12; 4 15 12; 2 6 9]
5*A=[10 15 0; 5 10 20; 0 10 5]
```

## ノルムの計算
Juliaでは，行列のノルムは```norm()```関数で計算できる．
上記で定義した```A```についてノルムを計算して出力する．

実行例

```bash
norm(A): 6.244997998398398
```

## 行列の対角化
ある正方行列<img src="https://latex.codecogs.com/gif.latex?A">に対して，正則行列<img src="https://latex.codecogs.com/gif.latex?P">を用いて<img src="https://latex.codecogs.com/gif.latex?P^{-1}AP">を対角行列にする操作を対角化と言う．

<img src="https://latex.codecogs.com/gif.latex?n">次の正方行列<img src="https://latex.codecogs.com/gif.latex?A">の対角化について，以下の同値な条件がある．

(i) <img src="https://latex.codecogs.com/gif.latex?A">は対角化可能である．

(ii) <img src="https://latex.codecogs.com/gif.latex?A">は<img src="https://latex.codecogs.com/gif.latex?n">個の一次独立な固有ベクトルをもつ．

(iii) <img src="https://latex.codecogs.com/gif.latex?A">の相異なるすべての固有値を<img src="https://latex.codecogs.com/gif.latex?\lambda_1,\dots,\lambda_p">とし，対応する固有空間を<img src="https://latex.codecogs.com/gif.latex?V(\lambda_1),\dots,V(\lambda_p)">とすると，

<img src="https://latex.codecogs.com/gif.latex?n=dimV(\lambda_1)+\dots+dimV(\lambda_p)">

が成り立つ．

対角化に使える行列には，固有ベクトルを並べた行列があり，得られる対角行列の対角成分は<img src="https://latex.codecogs.com/gif.latex?A">の固有値である．

```bash
Eigenvalues=[1.0, 4.0]
D=[-0.4472135954999579 0.7071067811865475; 0.8944271909999159 0.7071067811865475]
```

## 逆行列の計算
逆行列は，<img src="https://latex.codecogs.com/gif.latex?n">次の正則行列<img src="https://latex.codecogs.com/gif.latex?A">について，

<img src="https://latex.codecogs.com/gif.latex?AA^{-1}=A^{-1}A=E">

を満足するような<img src="https://latex.codecogs.com/gif.latex?A^{-1}">のことを指す．
ある正則行列について，逆行列は常に一つだけ定まる．

逆行列は掃き出し法，もしくは余因子を用いた方法によって求められる．

```bash
A^{-1}=[-0.5 -0.75 0.25; 0.5 0.25 0.25; -1.0 -0.5 0.5]
A*A^{-1}=[1.0 0.0 0.0; 0.0 1.0 0.0; 0.0 0.0 1.0]
```


## 特異値分解
任意の<img src="https://latex.codecogs.com/gif.latex?m\times{n}">行列<img src="https://latex.codecogs.com/gif.latex?A">について，

* <img src="https://latex.codecogs.com/gif.latex?m\times{m}">の直交行列<img src="https://latex.codecogs.com/gif.latex?U">
* <img src="https://latex.codecogs.com/gif.latex?n\times{n}">の直交行列<img src="https://latex.codecogs.com/gif.latex?V">
* <img src="https://latex.codecogs.com/gif.latex?m\times{n}">の非対角成分が0で，対角成分が非負であり降順に並んでいるような行列<img src="https://latex.codecogs.com/gif.latex?\Sigma">が存在し，

<img src="https://latex.codecogs.com/gif.latex?A=U\Sigma{V}">の行列積の形で表すことを特異値分解という．

```bash
A=Int8[-10 -4; -69 6]
U=[-0.13817012189235134 -0.9904085103714793; -0.9904085103714793 0.1381701218923512]
S=[69.92790909339664, 4.8049484727368865]
V=[0.9970252126577499 0.07707610086640548; -0.07707610086640548 0.9970252126577499]
USV=[-9.999999999999996 -3.9999999999999982; -68.99999999999999 6.0]
```

# Rank-nullity theorem
Rank-nullity theorem，階数・退化次数または次元定理とは，以下の関係式を指す．

<img src="https://latex.codecogs.com/gif.latex?rank(A)+dim(KerA)=dim(V)">

これは，行列のランクと退化次数の和がその行列の列の数に一致することを主張している．

<img src="https://latex.codecogs.com/gif.latex?A=\left(\begin{array}{ccc}1&2&3\\2&4&6\\0&2&1\end{array}\right)">

として，実際に計算してこれを確かめる．

実行例

```bash
rank=2
nullity=1
dim(V)=3
```

## Frobenius theorem

フロベニウスの定理

<img src="https://latex.codecogs.com/gif.latex?n">次正方行列<img src="https://latex.codecogs.com/gif.latex?A">が固有値<img src="https://latex.codecogs.com/gif.latex?\lambda_1,\lambda_2,\dots,\lambda_n">を持つとき，行列<img src="https://latex.codecogs.com/gif.latex?X">の多項式

<img src="https://latex.codecogs.com/gif.latex?f(X)=a_0X^n+a_1X^{n-1}+\dots+a_{n-1}X+a_nE">

に<img src="https://latex.codecogs.com/gif.latex?A">を代入して得られる行列<img src="https://latex.codecogs.com/gif.latex?f(X)">の固有値は，

<img src="https://latex.codecogs.com/gif.latex?f(\lambda_1),f(\lambda_2),\dots,f(\lambda_n)">

と一致する．

<img src="https://latex.codecogs.com/gif.latex?A=\left(\begin{array}{ccc}2&3&0\\1&2&4\\0&2&1\end{array}\right)">，
<img src="https://latex.codecogs.com/gif.latex?f(X)=X^3+2X^2+3X+5E">として，実際にこれを計算して確かめる．

実行例

```bash
eigvals(f(X))=[0.6076951545867428, 21.392304845413243, 195.0]
f(λ1)=0.6076951545867377f(λ2)=21.39230484541325f(λ3)=194.99999999999983
```

## Vandermonde行列式
以下のように定義される行列をVandermonde行列という．

<img src="https://latex.codecogs.com/gif.latex?A=\left(\begin{array}{cccc}1&1&\cdots&1\\x_1&x_2&\cdots&x_n\\\vdots&\vdots&\vdots&\vdots\\x_1^{n-1}&x_2^{n-1}&\cdots&x_n^{n-1}\end{array}\right)">

Vandermonde行列の行列式は，各行の公比の差積に等しく，以下のように表される．

<img src="https://latex.codecogs.com/gif.latex?det(V)=\prod_{1\leq{i}<j\leq{n}}(x_j-x_i)=(-1)^{n(n-1)/2}\prod_{1\leq{i}<j\leq{n}}(x_i-x_j)">

（証明）
帰納法によって証明する．

(i) n=2のとき

<img src="https://latex.codecogs.com/gif.latex?A=\left|\begin{array}{cc}1&1\\x_1&x_2\end{array}\right|=x_2-x_1">