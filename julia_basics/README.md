# Juliaの基本

プログラミング言語Juliaは動的プログラミング言語であり，科学分野や計算処理に適した非常に高いパフォーマンスを誇る言語．

https://julialang.org/

* インストール（Mac OS）

```bash
$  brew cask install julia
```

* インストール (ubuntu)

```bash
$ git clone https://github.com/JuliaLang/julia.git
$ cd julia
$ git checkout v1.3.1
$ make -j2
```

## 四則演算
Juliaを用いた基本的な四則演算を試す．
<img src="https://latex.codecogs.com/gif.latex?a=3">，<img src="https://latex.codecogs.com/gif.latex?b=5">として，

* <img src="https://latex.codecogs.com/gif.latex?a+b">  
* <img src="https://latex.codecogs.com/gif.latex?a-b">  
* <img src="https://latex.codecogs.com/gif.latex?a*b">  
* <img src="https://latex.codecogs.com/gif.latex?a/b">  

を計算し出力する．

[回答例](./operation.jl)


## 総和・総乗
繰り返し評価を使って以下の総和および総乗を計算する．

* <img src="https://latex.codecogs.com/gif.latex?\sum^{10}_{k=1}2k">  
* <img src="https://latex.codecogs.com/gif.latex?\prod^{10}_{k=1}2k">  

ここで，変数のスコープに注意する．  
グローバルに宣言された変数 `x` に代入を行うには `global x += 1` というふうにしなければいけない．

[回答例](./sum_prod.jl)


## 関数の定義

以下の関数を定義し，<img src="https://latex.codecogs.com/gif.latex?x=0,x=0.5">のときの値を計算する．

<img src="https://latex.codecogs.com/gif.latex?f(x)=\frac{1}{\sqrt{1-x^2}}">

上記の関数は<img src="https://latex.codecogs.com/gif.latex?\sin">関数の逆関数を微分したものである．

[回答例](./def_function.jl)

## 関数のプロット
先程定義した以下の関数を<img src="https://latex.codecogs.com/gif.latex?-1<x<1">でプロットする．
Juliaでプロットを行うには `Plots` パッケージを追加する必要がある．

<img src="https://latex.codecogs.com/gif.latex?f(x)=\frac{1}{\sqrt{1-x^2}}">

**実行例**
![plot-function](plot_function.png)

[回答例](./plot_function.jl)

## 三角関数
Juliaには三角関数が予め用意されている．
<img src="https://latex.codecogs.com/gif.latex?\sin(x),\cos(x)">を<img src="https://latex.codecogs.com/gif.latex?-\pi/2<x<\pi/2">でプロットする．

**実行例**
![trigonometric](trigonometric.png)

[回答例](./trigonometric.jl)

## ラジアンと角度の変換
ここでは角度をラジアンに変換する．
角度の弧度法への変換は以下のように行うことが出来る．

<img src="https://latex.codecogs.com/gif.latex?\theta^\circ=\theta\times\frac{\pi}{180}[rad]">

ここでは<img src="https://latex.codecogs.com/gif.latex?\theta=60">および<img src="https://latex.codecogs.com/gif.latex?\theta=80">として計算し，結果を出力する．

[回答例](./deg_rad.jl)


## アルキメデスの渦
デカルト座標系の点<img src="https://latex.codecogs.com/gif.latex?(x,y)">は極座標上の点<img src="https://latex.codecogs.com/gif.latex?(r,\theta)">で表現できる（極座標変換）．

* <img src="https://latex.codecogs.com/gif.latex?x=r\cos\theta">
* <img src="https://latex.codecogs.com/gif.latex?y=r\sin\theta">

ここで，<img src="https://latex.codecogs.com/gif.latex?r=\theta">で描かれる曲線をアルキメデスの渦と呼ぶ．
上記に従って，アルキメデスの渦をプロットする．


**実行例**
![archimedianSpiral](archimedean_spiral.png)

[回答例](./archimedean_spiral.jl)


## オイラーの公式
指数関数と三角関数の間に，以下の関係が成り立つことが知られており，この公式をオイラーの公式と呼ぶ．

<img src="https://latex.codecogs.com/gif.latex?e^{i\theta}=\cos\theta+i\sin\theta">

この<img src="https://latex.codecogs.com/gif.latex?e^{i\theta}">をガウス平面上にプロットする．

**実行例**
![eulersFormula](eulers_formula.png)
[回答例](./eulers_formula.jl)

## マクローリン展開
<img src="https://latex.codecogs.com/gif.latex?e^x">のマクローリン展開は，

<img src="https://latex.codecogs.com/gif.latex?e^x=\sum^\infty_{n=0}\frac{1}{n!}x^n">

となる．

<img src="https://latex.codecogs.com/gif.latex?x=1">としてマクローリン展開を計算し，ネイピア数を求める．

[回答例](./maclaurins_expansional.jl)


## フェルマーテスト
フェルマーテストは，フェルマーの小定理の対偶を利用した素数判定法．

フェルマーの小定理
>素数<img src="https://latex.codecogs.com/gif.latex?p">について，<img src="https://latex.codecogs.com/gif.latex?p">と互いに素な整数<img src="https://latex.codecogs.com/gif.latex?a">に対して以下が成り立つ．
><img src="https://latex.codecogs.com/gif.latex?a^{p-1}\equiv1(\mod{p})">

<img src="https://latex.codecogs.com/gif.latex?p">が合成数のとき，上記の等式は成り立たない可能性があることを利用して，素数判定を行う．

**フェルマーテスト**  
以下の試行を1セットとして，複数回試行を繰り返す．
1. <img src="https://latex.codecogs.com/gif.latex?a">を，<img src="https://latex.codecogs.com/gif.latex?2">から<img src="https://latex.codecogs.com/gif.latex?n-1">までの数からランダムに選ぶ
2. <img src="https://latex.codecogs.com/gif.latex?a">と<img src="https://latex.codecogs.com/gif.latex?n">が互いに素でないとき，<img src="https://latex.codecogs.com/gif.latex?n">は合成数
3. <img src="https://latex.codecogs.com/gif.latex?a^{p-1}\not\equiv1(\mod{p})">なら<img src="https://latex.codecogs.com/gif.latex?n">は合成数

試行回数を100として，57および23が素数かどうか判定する．

[回答例](./fermat_test.jl)
