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
