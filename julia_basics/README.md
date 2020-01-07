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

<img src="https://latex.codecogs.com/gif.latex?a+b,a-b,a*b,a/b">

を計算し出力する．

実行例

```bash
a+b=8
a-b=-2
axb=15
a/b=0.6
```

## 総和・総乗
繰り返し評価を使って以下の総和および総乗を計算する．

* <img src="https://latex.codecogs.com/gif.latex?\sum^{10}_{k=1}2k">
* <img src="https://latex.codecogs.com/gif.latex?\prod^{10}_{k=1}2k">

ここで，変数のスコープに注意する．グローバルに宣言された変数```x```に代入を行うには```global x += 1```というふうにしなければいけない．

実行例

```bash
sum=110
prod=3715891200
```

## 関数の定義

以下の関数を定義し，<img src="https://latex.codecogs.com/gif.latex?x=0,x=0.5">のときの値を計算する．

<img src="https://latex.codecogs.com/gif.latex?f(x)=\frac{1}{\sqrt{1-x^2}}">

上記の関数は<img src="https://latex.codecogs.com/gif.latex?\sin">関数の逆関数を微分したものである．

実行例

```bash
x=0: 1.0
x=0.5: 1.1547005383792517
```