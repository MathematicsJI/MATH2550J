<!-- Use Obsidian to Fully Render -->
# I. Parametric Surface and Their Area
### **Parametric surface**
In much the same way that we describe a space curve by a vector function of a single parameter $\displaystyle \mathbf{r}(t)=x(t)\mathbf{\hat{i}}+y(t)\mathbf{\hat{j}}$, we can describe a surface by a vector function $\displaystyle \mathbf{r}(u,v)$ of two parameters $\displaystyle u$ and $\displaystyle v$:
$$
\mathbf{r}(u,v)=x(u,v)\mathbf{\hat{i}}+y(u,v)\mathbf{\hat{j}}+z(u,v)\mathbf{\hat{k}}
$$
$\displaystyle \mathbf{r}(u,v)$ is a vector-valued function defined on a region $D$ in the $uv$ -plane. So $x$, $y$, and $z$, the component functions of $\mathbf{r}$, are functions of the two variables $u$ and $v$ with domain $D$. The set of all points $(x,y,z)$ in $\displaystyle \mathcal{R}^3$ such that
$$
\begin{align*}
x = x(u, v) \\
y = y(u, v) \\
z = z(u, v)
\end{align*}
\tag{1}
$$
when $(u, v)$ varies throughout $D$, is called <b><i>a parametric surface</i></b> $S$, and Equations (1) are called <b><i>parametric equations of</i></b> $S$. Each choice of $u$ and $v$ gives a point on $S$; by making all choices, we get all of $S$. In other words, the surface $S$ is traced out by the tip/end of the position vector $\mathbf{r}(u,v)$ as $(u,v)$ moves throughout the region $D$.

> [!question] Problem 1
> Identify and sketch the surface with vector equation
> $$\mathbf{r}(u,v) = 2\cos u \,\mathbf{\hat{i}} + v \,\mathbf{\hat{j}} + 2\sin u \,\mathbf{\hat{k}}$$

> [!Solution]
> So for any point on the surface, we have $$x + z = 2\cos u + 2\sin u = 2(\cos u + \sin u).$$
> Given the above expression, if we square both sides and apply the Pythagorean identity for trigonometric functions over the interval ( u ), we get $$x^{2} + z^{2} = (2 \cos u)^{2} + (2 \sin u)^{2} = 4(\cos^{2} u + \sin^{2} u) = 4.$$
> This means that vertical cross-sections parallel to the -plane (that is, with constant) are all circles with radius 2. Since and no restriction is placed on , the surface is a circular cylinder with radius 2 whose axis is the -axis (see Figure).
> ![|276x219](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801110928.jpeg)

#### **Surfaces of Revolution**
**Surfaces of revolution** can be represented **parametrically** and thus graphed using a computer. For instance, let's consider the surface obtained by rotating the curve $y=f(x)$ about the $x$ -axis, where $\displaystyle a \leq x\leq b$. Let $\theta$ be the angle of rotation. If $(x,y_{0})$ is a point on $y=f(x)$, then the curve traced out by the point $(x,y_{0})$ as $\theta$ varies from $0$ to $2\pi$ is given by the parametric equations:
$$
\begin{align*}
x &= x\\
y &= y_{0}\cos \theta=f(x) \cos\theta\\
z &= y_{0}\sin \theta=f(x)\sin\theta\\
\end{align*}
\tag{2}
$$
Therefore, we take $x$ and $\theta$ as parameters and regard Equations (2) as parametric equations of the surface of revolution. The parameter domain is given by $D=\{(x,\theta)\,|\,a\leq x\leq b,\,0\leq \theta\leq 2\pi\}$.

#### **Tangent Planes**
We now need to find **the tangent plane to a parametric surface** $S$ traced out by a vector function
$$
\mathbf{r}(u,v) = x(u,v)\mathbf{i} + y(u,v)\mathbf{j} + z(u,v)\mathbf{k}
$$
at a point $P$ with position vector $\mathbf{r}(u_{0},v_{0})$. If we keep $u$ constant by putting $u=u_0$, then $\mathbf{r}(u_{0},v)$ becomes **a vector function of the single parameter** $v$ and defines a grid curve $C$ lying on $S$. 
![|307x260](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801113118.jpeg)
The tangent vector to $C$ at $P$ is obtained by taking the partial derivative of $\mathbf{r}$ with respect to $v$:
$$
\mathbf{T}_v = \frac{\partial \mathbf{r}}{\partial v} = \frac{\partial x(u_0, v)}{\partial v}\mathbf{i} + \frac{\partial y(u_0, v)}{\partial v}\mathbf{j} + \frac{\partial z(u_0, v)}{\partial v}\mathbf{k}.
$$
### **Surface Area**
#### **Definition**
If a smooth parametric surface $S$ is given by the equation

$$
\mathbf{r}(u,v) = x(u,v)\mathbf{i} + y(u,v)\mathbf{j} + z(u,v)\mathbf{k}, \quad (u,v) \in D
$$
and $S$  is covered just once as $(u,v)$ ranges throughout the parameter domain $D$, then the surface area $S$ of is
$$
A(\mathbf{S}) = \iint_D |\mathbf{r}_u \times \mathbf{r}_v| dA
$$
Where
$$
\mathbf{r}_u = \frac{\partial \mathbf{r}}{\partial u} = \frac{\partial x}{\partial u}\mathbf{i} + \frac{\partial y}{\partial u}\mathbf{j} + \frac{\partial z}{\partial u}\mathbf{k},\quad
\mathbf{r}_v = \frac{\partial \mathbf{r}}{\partial v} = \frac{\partial x}{\partial v}\mathbf{i} + \frac{\partial y}{\partial v}\mathbf{j} + \frac{\partial z}{\partial v}\mathbf{k}.
$$
> [!question] Problem 2
> Find the surface area of a sphere of radius $a$.

> [!Solution]
> In the parametric representation of a sphere of radius $a$ is:
> $$\begin{align*}
x &= a \sin \phi \cos \theta \\
y &= a \sin \phi \sin \theta \\
z &= a \cos \phi
\end{align*}$$ 
> With the parameter domain being
> $$D=\{(\phi,\theta)\,|\,0\leq\phi\leq\pi,\,0\leq\theta\leq2\pi\}.$$
> We first compute the cross product of the tangent vectors:
> $$\mathbf{r}_{\phi} \times \mathbf{r}_{\theta} = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial x}{\partial \phi} & \frac{\partial y}{\partial \phi} & \frac{\partial z}{\partial \phi} \\ \frac{\partial x}{\partial \theta} & \frac{\partial y}{\partial \theta} & \frac{\partial z}{\partial \theta} \end{vmatrix} = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ a\cos\phi\cos\theta & a\cos\phi\sin\theta & -a\sin\phi \\ -a\sin\phi\sin\theta & a\sin\phi\cos\theta & 0 \end{vmatrix}$$
> Expanding the determinant, we get
> $$\mathbf{r}_{\phi}\times\mathbf{r}_{\theta}=\left(a^2\sin^{2}\phi\cos\theta\right)\mathbf{i}+\left(a^2\sin^{2}\phi\sin\theta\right)\mathbf{j}+(a^2\sin\phi\cos\phi)\mathbf{k}$$
> Thus
> $$\begin{align*}
|\mathbf{r}_{\phi} \times \mathbf{r}_{\theta}| &= \sqrt{(a^2 \sin^2 \phi \cos \theta)^2 + (a^2 \sin^2 \phi \sin \theta)^2 + (a^2 \sin \phi \cos \phi)^2} \\ &= \sqrt{a^4 \sin^4 \phi \cos^2 \theta + a^4 \sin^4 \phi \sin^2 \theta + a^4 \sin^2 \phi \cos^2 \phi} \\ &= \sqrt{a^4 \sin^4 \phi (\cos^2 \theta + \sin^2 \theta) + a^4 \sin^2 \phi \cos^2 \phi} \\ &= \sqrt{a^4 \sin^4 \phi + a^4 \sin^2 \phi \cos^2 \phi} \\ &= a^2 \sin \phi \sqrt{\sin^2 \phi + \cos^2 \phi} \\ &= a^2 \sin \phi
\end{align*}$$ 
> for $0 \leq \phi \leq \pi$ 
> Thus, the area of the sphere is given by
> $$A = \iint_D |\mathbf{r}_{\phi} \times \mathbf{r}_{\theta}| dA = \iint_D a^2 \sin \phi \, d\theta \, d\phi=a^2 \int_0^{2\pi} d\theta \int_0^{\pi} \sin \phi \, d\phi= 4\pi a^2$$   

#### **Theorem**
**For the special case of a surface ${\mathbf{S}}$ with the equation $\mathbf{z=f(x, y)}$**, where $(x,y)$ lies in $D$ and $f$ has continuous partial derivatives, we take $x$ and $y$ as parameters. The parametric equations are
$$
x=x, \quad y=y, \quad z=f(x,y)
$$
Therefore, the parametric representation can be written as
$$
\mathbf{r}(x, y) = x\mathbf{i} + y\mathbf{j} + f(x, y)\mathbf{k}.
$$
To find the surface area of $S$ , we need to compute the cross product and then find its magnitude:
$$
\mathbf{r}_x = \frac{\partial \mathbf{r}}{\partial x} = \mathbf{i} + \frac{\partial f}{\partial x} \mathbf{k},\quad
\mathbf{r}_y = \frac{\partial \mathbf{r}}{\partial y} = \mathbf{j} + \frac{\partial f}{\partial y} \mathbf{k}.
$$
Computing the cross product, we have
$$
\mathbf{r}_{x} \times \mathbf{r}_{y} = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ 1 & 0 & \frac{\partial f}{\partial x} \\ 0 & 1 & \frac{\partial f}{\partial y} \end{vmatrix} = -\frac{\partial f}{\partial y} \mathbf{i} - \frac{\partial f}{\partial x} \mathbf{j} + \mathbf{k}.
$$
Thus,
$$
|\mathbf{r}_x \times \mathbf{r}_y| = \sqrt{\left(-\frac{\partial f}{\partial y}\right)^2 + \left(-\frac{\partial f}{\partial x}\right)^2 + 1^2} = \sqrt{\left(\frac{\partial f}{\partial y}\right)^2 + \left(\frac{\partial f}{\partial x}\right)^2 + 1}
$$
Therefore, the surface area of is given by
$$
A(\mathbf{S}) = \iint_D \sqrt{\left(\frac{\partial f}{\partial x}\right)^2 + \left(\frac{\partial f}{\partial y}\right)^2 + 1} dA.
$$
> [!question] Problem 3
> Find the area of the part of the paraboloid $z=x^2+y^2$ that lies under the plane $z=9$.

> [!solution]
> The plane intersects the paraboloid in the circle $x^2+y^2=9$, $z=9$. Using Formula, we have
> $$
A=\iint_D\sqrt{1+\left(\frac{\partial z}{\partial x}\right)^2+\left(\frac{\partial z}{\partial y}\right)^2}\,dA=\iint_D\sqrt{1+(2x)^2+(2y)^2}\,dA=\iint_D\sqrt{1+4(x^2+y^2)}\,dA.$$
> Converting to polar coordinates, we obtain
> $$
A = \int_0^{2\pi} \int_0^3 \sqrt{1 + 4r^2} \, r \, dr \, d\theta = \int_0^{2\pi} d\theta \int_0^3 r \sqrt{1 + 4r^2} \, dr = \frac{\pi}{6} \left( 37\sqrt{37} - 1 \right).$$
> Use substitution when calculatin the integral.

# **II. Surface Integral**
### **Parametric Surface**
To compute the surface integral of $f(x,y,z)$ over a parametric surface $S$, we have
$$
\iint_{\mathbf{S}} f(x, y, z) \,\mathrm{d}S $$
In most cases we use the parameterization expression of that surface, then the integral of a function over is given by:
$$
\iint_{\mathbf{S}} f(x, y, z) dS = \iint_{D} f(\mathbf{r}(u, v)) |\mathbf{r}_{u} \times \mathbf{r}_{v}| dA
$$

where $\mathbf{r}_{u}=\frac{\partial \mathbf{r}}{\partial u}$ and $\mathbf{r}_{v}=\frac{\partial \mathbf{r}}{\partial v}$.
### **Special Case**
When the surface is given by a graph $z=f(x,y)$, we take $x$ and $y$ as parameters. The parametric equations are
$$
\iint_S f(x, y, z) \,\mathrm{d} S = \iint_D f(x, y, f(x, y)) \sqrt{\left(\frac{\partial z}{\partial x}\right)^2 + \left(\frac{\partial z}{\partial y}\right)^2 + 1} \,\mathrm{d}A,
$$
### **Oriented Surfaces**
#### **Definition**
If $\mathbf{F}$  is a continuous vector field defined on an oriented surface $\mathbf{S}$ with unit normal vector $n$, then the surface integral of $\mathbf{F}$ over $\mathbf{S}$ is
$$
\iint_{\mathbf{S}} \mathbf{F} \cdot \,\mathrm{d}\mathbf{S} = \iint_{\mathbf{S}} \mathbf{F} \cdot \mathbf{n} \, \,\mathrm{d}S
$$
This integral is also called the ***flux*** $\mathbf{F}$ of across $S$.

The ***surface integral of a vector field*** can be expressed over a parametric surface as follows:
$$
\iint_{\mathbf{S}} \mathbf{F} \cdot \,\mathrm{d}\mathbf{S} = \iint_{\mathbf{S}} \mathbf{F} \cdot \mathbf{n} \, \,\mathrm{d}S = \iint_{\mathbf{D}} \mathbf{F}(\mathbf{r}(u,v)) \cdot \frac{\mathbf{r}_u \times \mathbf{r}_v}{\|\mathbf{r}_u \times \mathbf{r}_v\|} \|\mathbf{r}_u \times \mathbf{r}_v\| \, \,\mathrm{d}A = \iint_{\mathbf{D}} \mathbf{F}(\mathbf{r}(u,v)) \cdot (\mathbf{r}_u \times \mathbf{r}_v) \, \,\mathrm{d}A.
$$
where $D$ is the parameter domain of the surface $\mathbf{S}$ and $\mathbf{r}(u,v)$ is the parameterization of the surface.  

#### Difference with Common Surface Integral
##### 1. 什么是“有向面”？
- **普通的面**（surface）：只关心形状和位置，不关心“哪一面朝外”。
- **有向面**（oriented surface）：不仅有形状和位置，==还规定了“正方向”——即每一点都指定了一个**单位法向量**==（normal vector），通常用 $\mathbf{n}$ 表示
##### 2. 为什么要“有向”？
- 在很多物理和数学问题中（如流量、磁通量、斯托克斯定理、高斯定理等），**方向**很重要
- 只有规定了方向，才能明确“流进”还是“流出”，“正通量”还是“负通量”
##### 3. 在积分中的区别
- **有向面积分**：$\iint_S \mathbf{F} \cdot \,\mathrm{d}\mathbf{S} = \iint_S \mathbf{F} \cdot \mathbf{n}\, \,\mathrm{d}S$
- **普通面积分**：$\iint_S f(x,y,z)\, \,\mathrm{d}S$

#### **Special Case: $z=f(x,y)$**
In this special case where $\mathbf{F}=P(x,y,z)\mathbf{i} + Q(x,y,z)\mathbf{j} + R(x,y,z)\mathbf{k}$ and $\mathbf{S}$ is given by $z=f(x,y)$, we have:
$$
\mathbf{F} \cdot (\mathbf{r}_x \times \mathbf{r}_y) = (P\mathbf{i} + Q\mathbf{j} + R\mathbf{k}) \cdot \left( -\frac{\partial z}{\partial x}\mathbf{i} - \frac{\partial z}{\partial y}\mathbf{j} + \mathbf{k} \right).
$$
Thus, the dot product simplifies to
$$
\mathbf{F} \cdot (\mathbf{r}_x \times \mathbf{r}_y) = P\left(-\frac{\partial z}{\partial x}\right) + Q\left(-\frac{\partial z}{\partial y}\right) + R.
$$
So the formula becomes
$$
\iint_{\mathbf{S}} \mathbf{F} \cdot d\mathbf{S} = \iint_{\mathbf{S}} \left( P\left( -\frac{\partial z}{\partial x} \right) + Q\left( -\frac{\partial z}{\partial y} \right) + R \right) dS.
$$
or in terms of the parameter domain $D$,
$$
\iint_{\mathbf{S}} \mathbf{F} \cdot d\mathbf{S} = \iint_{D} \left( -P \frac{\partial z}{\partial x} - Q \frac{\partial z}{\partial y} + R \right) dA.
$$

> [!question] Problem 4
> Compute the surface integral $\displaystyle \iint_{\mathbf{S}}x^2\cdot \,\mathrm{d}S$, where $S$ is the unit sphere $\displaystyle x^2+y^2+z^2=1$.

> [!solution]
> ![|448x531](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801122037.jpeg)

> [!question] Problem 5
> Evaluate $\iint_S y \cdot dS$, where $S$ is the surface $z = x + y^2$, $0 \leq x \leq 1$, $0 \leq y \leq 2$.

> [!solution]
> ![|550x77](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801122526.jpeg)

> [!question] Problem 6
> Evaluate $\iint_S \mathbf{F} \cdot d\mathbf{S}$, where $\mathbf{F}(x, y, z) = -yj + xj + zk$ and $S$ is the boundary of the solid region $E$ enclosed by the paraboloid $z = 1 - x^2 - y^2$ and the plane $z = 0$.

> [!solution]
> ![|550x388](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801122629.jpeg)


## **Extra Exercises**
![|743x392](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801122645.jpeg)

### **Answers**
1.
- $\dfrac{4}{15} \left( 3^{5/2} - 2^{7/2} + 1 \right)$
- $4\sqrt{22}$
- $\sqrt{14\pi}$
- $2\pi \int_0^1 r \sqrt{1 + 4r^2 \sin^2(r)}\, dr$

2.
- $0$
- $108\sqrt{2}\pi$
- $241\pi$
- $\dfrac{1}{2} \pi^2$

# **III. Stokes' Theorem** 化旋为环
### Theorem 
- Let $C$ be a positively oriented, piecewise-smooth, simple, closed curve in $\mathbb{R}^3$ and let $S$ be a surface whose boundary is $C$ oriented with respect to the orientation of $C$ according to the right-hand rule. Let $\mathbf{F}$ be a vector field on $\mathbb{R}^3$ whose component have continuous partial derivatives on a domain that contains $S$, then
$$
\int_C \mathbf{F} \cdot \,\mathrm{d}\mathbf{r} = \iint_S \text{curl}(\mathbf{F}) \cdot \,\mathrm{d}\mathbf{S}=\iint_S \nabla \times \mathbf{F} \cdot \,\mathrm{d}\mathbf{S} 
$$
![|550x546](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801122930.jpeg)

- In general, if $\mathbf{S}_1$ and $\mathbf{S}_2$ are oriented surfaces with the same oriented boundary curve $C$ and both satisfy the hypotheses of Stokes’ Theorem, then
$$
            \iint_{\mathcal{S}_1} \operatorname{curl}(\mathbf{F}) \cdot \,\mathrm{d}  \mathbf{S} = \int_{\mathcal{C}} \mathbf{F} \cdot \,\mathrm{d} \mathrm{r} = \iint_{\mathcal{S}_2} \operatorname{curl}(\mathbf{F}) \cdot \,\mathrm{d}  \mathbf{S}$$
            
> [!question] Problem 7
> Let $C$ be the closed curve illustrated below
>  ![|346x259](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801124852.jpeg)
> For $F(x, y, z) = (y, z, x)$, compute $\int_C F\cdot ds$

> [!Solution] 
> ![|550x378](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801124956.jpeg)

# IV. Divergence Theorem 化散为通
### Theorem
- Let $\mathcal{S}$ be a piecewise-smooth surface that encloses a solid $\mathcal{V}$ that is oriented so that the normal vectors point away from the interior of $\mathcal{S}$. Let $F$ be a vector field on $\mathbb{R}^3$ whose components have continuous partial derivatives on an open region that contains $\mathcal{V}$. Then 
$$
\iint_{\mathcal{S}} \mathbf{F} \cdot \,\mathrm{d}\mathbf{S} = \iiint_{\mathcal{V}} \operatorname{div}(\mathbf{F}) \,\mathrm{d}V=\iiint_{\mathcal{V}} \nabla\cdot\mathbf{F}\,\mathrm{d}V
$$
![|263x197](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801130526.jpeg)

> [!question] Problem 8
> Calculate $\iint_S=\frac{x}{r^3}dydz+\frac{y}{r^3}dxdz+\frac{z}{r^3}dxdy$, where $r=\sqrt{x^2+y^2+z^2}$, and $S$ is:
>     (1) the outside of the ball $x^2+y^2+z^2=a^2$ 
>     (2) the outside of the ball $(x-114)^2+(y-514)^2+(z-1919)^2=810^2$ 
>     (3) the upper side of the surface $1-\frac{z}{7}=\frac{(x-2)^2}{25}+\frac{(y-1)^2}{16}$, where $z\geq 0$

> [!Solution]
> ![|735x965](./assets/Part%20III%20Surface%20Integral,%20Stokes'%20Theorem,%20Divergence%20Theorem/file-$20250801125323.jpeg)

