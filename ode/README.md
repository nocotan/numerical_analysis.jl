# 常微分方程式

## Euler法による1階常微分方程式
以下の１階常微分方程式をEuler法によって解く．

<img src="https://latex.codecogs.com/gif.latex?\frac{dy}{dt}&space;=&space;5y&space;&plus;&space;4,\&space;y(0)&space;=&space;y_0">

### Euler法
関数<img src="https://latex.codecogs.com/gif.latex?y(t)">の<img src="https://latex.codecogs.com/gif.latex?t_i">まわりにおけるテイラー展開は，以下で表される．

<img src="https://latex.codecogs.com/gif.latex?y(t_{i&plus;1})&space;=&space;y(t_i)&space;&plus;&space;hy'(t_i)&space;&plus;&space;\frac{h^2}{2}y''(t_i)&space;&plus;\cdots,">

ここで，<img src="https://latex.codecogs.com/gif.latex?f(t_i,&space;y_i)&space;=&space;y'(t_i),&space;y_i&space;=&space;y(t_i),&space;y_{i&plus;1}&space;=&space;y(t_{i&plus;1})">とおくと，

<img src="https://latex.codecogs.com/gif.latex?y_{i&plus;1}&space;=&space;y_i&space;&plus;&space;hf(t_i,&space;y_i)&space;&plus;&space;\frac{h^2}{2}f'(t_i,&space;y_i)&plus;\cdots,">

と書ける．上記のテイラー展開を１次まで考えてそれ以降の項を無視するとき，この差分方程式の局所打ち切り誤差は<img src="https://latex.codecogs.com/gif.latex?O(h^2)">であると言い，これをEuler法と呼ぶ．まとめると，

<img src="https://latex.codecogs.com/gif.latex?y_{i&plus;1}&space;=&space;y_i&space;&plus;&space;hf(t_i,&space;y_i)">

となる．

![](1st_order_euler.png)


## Euler法による2階常微分方程式
以下の2階常微分方程式をEuler法によって解く．

<img src="https://latex.codecogs.com/gif.latex?y''-6y'+9y=0">, （初期条件：<img src="https://latex.codecogs.com/gif.latex?x=0">で<img src="https://latex.codecogs.com/gif.latex?y=0">，<img src="https://latex.codecogs.com/gif.latex?y'=1">）

### 解析解

与式より，特性方程式を解くと，

<img src="https://latex.codecogs.com/gif.latex?\lambda^2-6\lambda+9=0\\(\lambda-3)^2=0\\\lambda=3">

したがって与式の一般解は，

<img src="https://latex.codecogs.com/gif.latex?y=(C_1+C_2x)e^{3x}">

また，初期条件より，

<img src="https://latex.codecogs.com/gif.latex?y(0)=C_1=0">,
<img src="https://latex.codecogs.com/gif.latex?y'(0)=C_2=1">

より，求める一般解は，

<img src="https://latex.codecogs.com/gif.latex?y=xe^{3x}">


![](2nd_order_euler.png)

## 質点の１次元運動（自由落下）
質点の運動は，次の運動方程式に支配される．

<img src="https://latex.codecogs.com/gif.latex?F=m\alpha=m\frac{dv}{dt}=m\frac{d^2x}{dt^2}">

ここで，
* <img src="https://latex.codecogs.com/gif.latex?F">: 力
* <img src="https://latex.codecogs.com/gif.latex?m">: 質量
* <img src="https://latex.codecogs.com/gif.latex?\alpha">: 加速度
* <img src="https://latex.codecogs.com/gif.latex?v">: 速度
* <img src="https://latex.codecogs.com/gif.latex?x">: 位置
* <img src="https://latex.codecogs.com/gif.latex?t">: 時刻

この運動方程式を元に，最も単純な落下運動である**自由落下**を考える．

重力以外の力が働かない**自由落下**の状態では，地球上では加速度<img src="https://latex.codecogs.com/gif.latex?\alpha">は定数<img src="https://latex.codecogs.com/gif.latex?g=9.80665(m/s^2)">となる．この定数<img src="https://latex.codecogs.com/gif.latex?g">を重力加速度と呼ぶ．
自由落下の場合には，上記の運動方程式は解析的に解くことが出来る．速度と速度の初期値および位置と位置の初期値をそれぞれ<img src="https://latex.codecogs.com/gif.latex?v_f,v_0,x_f,x_0">とすると，それぞれの関係は，

* <img src="https://latex.codecogs.com/gif.latex?v_f=v_0+gt">
* <img src="https://latex.codecogs.com/gif.latex?x_f=x_0+v_0t+\frac{1}{2}gt^2">

となり，これを解くことで自由落下の運動を求めることが出来る．
しかし，実際の多くの問題は，このように運動方程式が解析的に解けるとは限らない．

上記に基づいて，Euler法によって運動方程式を求める．ここで重力加速度```g=9.80665```，初期速度および初期位置は，```(v_0, x_0) = (0, 100)```と```(v_0, x_0)=(-100, 100)```のそれぞれについて計算を行い，軌道をプロットする．

実行例

```v_0 = 0, x_0 = 100```

![](freefall_v0=0.png)

```v_0 = -100, x_0 = 100```

![](freefall_v0=-100.png)

## 質点の１次元運動（着陸船）
自由落下の問題を応用して，逆噴射を行って軟着陸する着陸船ロケットの軌道を計算することが出来る．
ここでは，逆噴射を行う際の燃料消費による質量の変化などの条件は無視するものとする．
実験では，逆噴射の加速度<img src="https://latex.codecogs.com/gif.latex?\alpha">は一定とし，ある時刻から逆噴射を始めるものとする．

上記に従って，軟着陸の軌道を計算し，プロットする．
ここで，```(v_0, x_0, s, a)=(0, 100, 2, 1.2)```とする（```s```は逆噴射を開始する時刻，```a```は逆噴射の加速度）．

実行例

![](lander.png)