# 行列演算

juliaには線形代数関連のパッケージである```LinearAlgebra```が存在し，これを利用することが出来る．

* パッケージの追加
```julia
(v1.3) pkg> add LinearAlgebra
```

* パッケージの利用
```julia
using LinearAlgebra
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

## 線型方程式の求解