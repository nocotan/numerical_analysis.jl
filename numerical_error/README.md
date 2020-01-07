# 数値計算と誤差
計算機を用いた数値計算では，数の表現や計算に伴う誤差が生じる．
以下に，数値計算における誤差の例を示す．

|&nbsp;  誤差 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 説明                                                                                                 |
|---------|------------------------------------------------------------------------------------------------------|
| 桁落ち   | 値のほぼ等しい数値同士の減算などによって有効数字が失われることによって生じる．                       |
| 丸め誤差| 有限桁数の二進数で実数を表現することによって生じる．                                                 |
| 情報落ち | 絶対値の大きい異なる数値同士の演算において，絶対値の小さな数値が演算結果に反映されないために生じる． |

## 桁落ち
値のほぼ等しい数値同士の減算では，有効数字が失われる可能性がある．この現象を桁落ちと呼ぶ．
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
