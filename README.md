# 数値計算100本ノック

Juliaによる数値計算100本ノック．
問題及び解答は鋭意作成中です．

## Requirements
* Julia v1.3.1

## Contents（36/70）

### [Juliaの基本](julia_basics) (10/10)
* [x] 四則演算
* [x] 総和・総乗
* [x] 関数の定義
* [x] 関数のプロット
* [x] 三角関数
* [x] ラジアンと角度の変換
* [x] アルキメデスの渦
* [x] オイラーの公式
* [x] マクローリン展開
* [x] フェルマーテスト

### [数値計算と誤差](numerical_error)（5/10）
* [ ] Overflow
* [x] 桁落ち
* [x] 丸め誤差
* [x] 情報落ち
* [x] Rumpの例題
* [x] 誤差伝播
* [ ] 二進数表現
* [ ] 階乗計算
* [ ] 二項係数の計算
* [ ] 二項定理

### [微積分](calculus)（3/10）
* [ ] <img src="https://latex.codecogs.com/gif.latex?\varepsilon-\delta">論法による極限の定義
* [ ] 中間値の定理
* [ ] 平均値の定理
* [x] 数値微分
* [x] 台形則による数値積分
* [x] Simpson則による数値積分
* [ ] Gauss–Legendre公式による数値積分
* [ ] Romberg積分による数値積分
* [ ] 2曲線間の面積
* [ ] 表面積の計算
* [ ] 弧長決定問題

### [線形代数](matrix_operation)（10/10）
* [x] 行列の定義
* [x] 行列演算
* [x] ノルムの計算
* [x] 行列の対角化
* [x] 逆行列の計算
* [x] 特異値分解
* [x] Rank–nullity theorem
* [x] Frobenius theorem
* [x] Vandermonde行列式
* [x] Woodburyの恒等式
* [x] Cauchy-Binetの公式

### [線型方程式](linear_equation)（0/5）
* [ ] ガウスの消去法
* [ ] LU分解
* [ ] Jacobi法
* [ ] Gauss-Seidel法
* [ ] SOR法

### [非線形方程式](nonlinear_equation)（2/7）
* [x] 二分法による非線形方程式
* [x] Newton法による非線形方程式
* [ ] False position法による非線形方程式
* [ ] Secant法による非線形方程式
* [ ] Anderson-Björk法による非線形方程式
* [ ] Brent法による非線形方程式
* [ ] Steffensen法による非線形方程式

### [常微分方程式](ode)（5/10）
* [x] Euler法による1階常微分方程式
* [x] Euler法による2階常微分方程式
* [ ] Heun法による1階常微分方程式
* [ ] Heun法による2階常微分方程式
* [ ] Runge–Kutta法による1階常微分方程式
* [ ] Runge–Kutta法による2階常微分方程式
* [x] 質点の１次元運動（自由落下）
* [x] 質点の１次元運動（着陸船）
* [x] ポテンシャルに基づく二次元運動（電荷）
* [ ] Volterraモデル

### [偏微分方程式](pde)（0/4）
* [ ] Laplace方程式の境界値問題（ガウスの消去法）
* [ ] Laplace方程式の境界値問題（ヤコビ法）
* [ ] Koreweg de Vries方程式のmethod of linesによる数値解
* [ ] Koreweg de Vries方程式の有限差分法による数値解

### [有限要素法](fem)（0/4）
* [ ] 単純領域のメッシュ分割
* [ ] 複雑領域のメッシュ分割
* [ ] Koreweg de Vries方程式の有限要素法による数値解
* [ ] 熱拡散方程式の有限要素法による数値解

### [精度保証付き数値計算](self_validating) (0/3)
* [ ] 区間演算
* [ ] Newton型作用素
* [ ] 不動点定理

## LICENSE
This repository is MIT-style licensed, as found in the [LICENSE file](./LICENSE).
