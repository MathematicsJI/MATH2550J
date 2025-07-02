在 Mid RC 上，我对隐函数求导部分的讲解有点问题，用此 PDF 专门说明。

首先，隐函数求导最重要的一点，是==确定谁对谁求导==，也就是==找清楚自变量和因变量==。

**具体步骤**：
如果要求 A 对 $B$ 的偏导数：
1. 就认为 A 是因变量，与其他变量($B,C,D,\cdots$)有关，$\displaystyle \frac{\partial A}{\partial B}$ 存在；而其他变量($B,C,D,\cdots$)都是自变量，相互无关，即 $\displaystyle \frac{\partial ...}{\partial B}$  = 0
2. 把表达式 $F (A, B, C,\cdots) = 0$ 对 $B$ 求偏导数(全微分)，得到 $\displaystyle \frac{\partial F}{\partial A} \frac{\partial A}{\partial B} + \frac{\partial F}{\partial B} \frac{\partial B}{\partial B} + \frac{\partial F}{\partial C} \frac{\partial C}{\partial B} + \cdots = 0$。
3. 因为 $A$ 是因变量，$\displaystyle \frac{\partial A}{\partial B}$ 存在；而 $B,C,D,\cdots$ 都是自变量，所以 $\displaystyle \frac{\partial B}{\partial B} = 1, \frac{\partial C}{\partial B} \cdots = 0$
4. 代入上式，得到 $\displaystyle \frac{\partial F}{\partial A} \frac{\partial A}{\partial B} + \frac{\partial F}{\partial B} = 0$
5. 也就是 $\displaystyle \boxed{\color{red}\frac{\partial A}{\partial B} = - \frac{F_B}{F_A}}$
6. 这也就是**隐函数求导的一般公式**（实在无法理解套公式就完了）

下面是具体说明。

若我们有函数 $\displaystyle F(x,y) = 0$：
- 若我们要求 $y$ (对 $x$) 的导数，则认为 $y$ 是因变量，$x$ 是自变量，即
$$ 
\dfrac{\partial F}{\partial x} \dfrac{\mathop{}\!\mathrm{d} x}{\mathop{}\!\mathrm{d} x} + \dfrac{\partial F}{\partial y} \dfrac{\mathop{}\!\mathrm{d} y}{\mathop{}\!\mathrm{d} x} = 0.  
$$
因为 $\dfrac{\mathop{}\!\mathrm{d} x}{\mathop{}\!\mathrm{d} x} = 1$，所以 
$$
\dfrac{\mathop{}\!\mathrm{d} y}{\mathop{}\!\mathrm{d} x} = - \dfrac{F_x}{F_y}.  
$$
- 若我们要求 $x$ (对 $y$) 的导数，则认为 $y$ 是因变量，$x$ 是自变量，即
$$
\dfrac{\partial F}{\partial x} \dfrac{\mathop{}\!\mathrm{d} x}{\mathop{}\!\mathrm{d} y} + \dfrac{\partial F}{\partial y} \dfrac{\mathop{}\!\mathrm{d} y}{\mathop{}\!\mathrm{d} y} = 0. 
$$
因为 $\dfrac{\mathop{}\!\mathrm{d} y}{\mathop{}\!\mathrm{d} y} = 1$，所以
$$
\dfrac{\mathop{}\!\mathrm{d} x}{\mathop{}\!\mathrm{d} y} = - \dfrac{F_y}{F_x}.  
$$

同样的，当扩展到三元函数 $\displaystyle F(x,y,z) = 0$：
- 若我们要求 $y$ 对 $x$ 的导数，则认为 $y$ 是因变量，$x,z$ 是自变量，即 
$$
\dfrac{\partial F}{\partial x} \dfrac{\partial x}{\partial x} + \dfrac{\partial F}{\partial y} \dfrac{\partial y}{\partial x} + \dfrac{\partial F}{\partial z} \dfrac{\partial z}{\partial x} = 0. 
$$
因为我们将 $x, z$ 视为自变量，所以 $\dfrac{\partial z}{\partial x} = 0$。同时 $\frac{\partial x}{\partial x}=1$，所以
$$
    \dfrac{\partial F}{\partial x} + \dfrac{\partial F}{\partial y} \dfrac{\partial y}{\partial x} = 0 \implies \dfrac{\partial y}{\partial x} = - \dfrac{F_x}{F_y}.
$$

    
