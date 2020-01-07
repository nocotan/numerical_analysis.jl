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