# 数値計算と誤差
計算機を用いた数値計算では，数の表現や計算に伴う誤差が生じる．
以下に，数値計算における誤差の例を示す．

|&nbsp;  誤差 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 説明                                                                                                 |
|---------|------------------------------------------------------------------------------------------------------|
| 桁落ち   | 値のほぼ等しい数値同士の減算などによって有効数字が失われることによって生じる．                       |
| 丸め誤差| 有限桁数の二進数で実数を表現することによって生じる．                                                 |
| 情報落ち | 絶対値の大きく異なる数値同士の演算において，絶対値の小さな数値が演算結果に反映されないために生じる． |

## 桁落ち
値のほぼ等しい数値同士の減算では，有効数字が失われる可能性がある．この現象を**桁落ち**と呼ぶ．
例えば次のような計算を行う場合，<img src="https://latex.codecogs.com/gif.latex?x">

<img src="https://latex.codecogs.com/gif.latex?\sqrt{x+1}-\sqrt{x}">

上記を倍精度で計算する場合，<img src="https://latex.codecogs.com/gif.latex?x">が<img src="https://latex.codecogs.com/gif.latex?10^{15}">程度になると<img src="https://latex.codecogs.com/gif.latex?\sqrt{x+1}">と<img src="https://latex.codecogs.com/gif.latex?\sqrt{x}">の値が有効数字の範囲内でほぼ等しくなるため，減算によって有効数字が大きく損なわれる．
さらに<img src="https://latex.codecogs.com/gif.latex?x">が<img src="https://latex.codecogs.com/gif.latex?10^{16}">程度では，減算の結果は0になってしまう．
これを避けるためには，値のほぼ等しい数値同士の減算を避ける必要がある．
その方法の一つに，次のような**分子の有理化**がある．
これを用いることで，値のほぼ等しい数値同士の減算を避けることが出来る．

<img src="https://latex.codecogs.com/gif.latex?\sqrt{x+1}-\sqrt{x}=(\sqrt{x+1}-\sqrt{x})\frac{\sqrt{x+1}+\sqrt{x}}{\sqrt{x+1}+\sqrt{x}}\\=\frac{1}{\sqrt{x+1}+\sqrt{x}}">

以上に基づいて，以下の計算を実装する．

<img src="https://latex.codecogs.com/gif.latex?\sqrt{x+1}-\sqrt{x}">について，

* ```x=1e+15```を代入して通常通り計算
* ```x=1e+16```を代入して通常通り計算
* ```x=1e+15```を代入して有理化して計算
* ```x=1e+16```を代入して有理化して計算

実行例
```bash
x=1e+15       : 1.862645149230957e-8
x=1e+15(有理化): 1.5811388300841893e-8
x=1e+16       : 0.0
x=1e+16(有理化): 5.0e-9
```

## 丸め誤差
**丸め誤差**は，実数を有限の桁数の2進数で表現するために生じる誤差．
10進数の無理数や循環少数，2進数表現で循環少数になる数値を計算機で扱う際に生じる可能性がある．
例えば，10進数の0.1は2進数では次のような循環少数となる．

<img src="https://latex.codecogs.com/gif.latex?(0.1)_{10}=(0.0001100110011\cdots)_2">

したがって，10進数の0.1を計算機を扱う場合には必ず丸め誤差を伴うことになる．

上記に従って，0.1を100万回足し合わせた結果を出力し，加算結果が100000と厳密に一致しないことを確かめる．

実行例
```bash
result=100000.00000133288
```

## 情報落ち
**情報落ち**は，絶対値の大きく異なる数値同士の演算において，絶対値の小さな数値が演算結果に反映されない現象．
情報落ちが生じる場合の例として，<img src="https://latex.codecogs.com/gif.latex?10^{10}">に<img src="https://latex.codecogs.com/gif.latex?10^{-8}">を繰り返し加える計算を考える．
これを単純に実装すると，絶対値の小さな数値が演算結果に反映されない．
しかし，計算順序を工夫することでこれを回避することが出来る場合がある．
具体的には，はじめに絶対値の小さな値の数値同士を加えてから，あとで絶対値の大きな数値に加えることで，加算結果を反映させることが出来る．

上記にしたがって，<img src="https://latex.codecogs.com/gif.latex?10^{10}">に<img src="https://latex.codecogs.com/gif.latex?10^{-8}">を単純に1000万回加算した場合と，はじめに<img src="https://latex.codecogs.com/gif.latex?10^{-8}">を10000万回加算したあとその結果を<img src="https://latex.codecogs.com/gif.latex?10^{10}">に足し合わせた結果を出力し，それぞれの計算結果が一致しないことを確かめる．

実行例
```bash
result1=1.0e10
result2=1.00000000001e10
```

## Rumpの例題
以下の関数は，数値計算における演算精度についての好ましく無い結果を導くものである．

<img src="https://latex.codecogs.com/gif.latex?f(a,b)=333.75b^6+a^2(11a^2b^2-b^6-121b^4-2)+5.5b^8+\frac{a}{2b}">

IBMのメインフレームS/370を用いて，以下の精度で実験を行うと，
* 単精度（10進約8桁）： <img src="https://latex.codecogs.com/gif.latex?1.172603\dots">
* 倍精度（10進約17桁）： <img src="https://latex.codecogs.com/gif.latex?1.1726039400531\dots">
* 拡張精度（10進約34桁）： <img src="https://latex.codecogs.com/gif.latex?1.172603940053178\dots">

という結果を得られ，精度をあげるごとに計算できる桁数が増えているように見えるが，実際の真の値は<img src="https://latex.codecogs.com/gif.latex?f(a,b)=-0.82739605\dots">と，全く違う計算結果が偉てていたことがわかった．
この関数はRumpの例題として知られており，複数の精度で計算して近い結果が得られていればある程度正しい計算結果を導けているという仮説を覆すものである．

上記に従って，Juliaで```Float64```および```BigFloat```の演算精度でRumpの例題を計算し，それぞれの計算結果を出力する．

実行例

```bash
Float64: -1.1805916207174113e21
BigFloat: -0.8273960599468213681411650954798162919990331157843848199178148416727096930142628
```

## 誤差伝播
ある数値計算を行って得られる結果は誤差を伴うことが多々あるが，このような誤差を持った数値を用いて新たな計算を行った結果もまた，当然誤差を持つ．これを誤差の伝播という．
ここでは四則演算のうち，加減法について考える．
加減法における誤差伝播には，以下の法則がある．

加減法の誤差伝播

<img src="https://latex.codecogs.com/gif.latex?A:a\pm\delta{a}">，<img src="https://latex.codecogs.com/gif.latex?B:b\pm\delta{b}">から計算される<img src="https://latex.codecogs.com/gif.latex?C=A\pm{B}">の誤差<img src="https://latex.codecogs.com/gif.latex?\delta{c}">は，次式のように抑えられる．

<img src="https://latex.codecogs.com/gif.latex?\delta{c}\leq{\delta{a}+\delta{b}}">

```a=5```，```b=7```，```da=0.1```，```db=0.3```として，上記の関係式が成り立つことを確かめる．

実行例

```bash
|(a+b)-(a+da)+(b+db)|: 0.3999999999999986<=0.4
|(a+b)-(a-da)+(b+db)|: 0.1999999999999993<=0.4
|(a+b)-(a+da)+(b-db)|: 0.1999999999999993<=0.4
|(a+b)-(a-da)+(b-db)|: 0.3999999999999986<=0.4
|(a-b)-(a+da)+(b+db)|: 0.20000000000000018<=0.4
|(a-b)-(a-da)+(b+db)|: 0.39999999999999947<=0.4
|(a-b)-(a+da)+(b-db)|: 0.39999999999999947<=0.4
|(a-b)-(a-da)+(b-db)|: 0.20000000000000018<=0.4
```