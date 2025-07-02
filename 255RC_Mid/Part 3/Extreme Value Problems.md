## Extreme Values

### Definition -- Min & Max
We say that
1. $\vec{a} \in D$ is a local maximum of $f$ if $\exists r > 0 \ \forall \bar{x} \in B(\bar{a}, r): f(\bar{x}) \leq f(\bar{a})$.
2. $\bar{a} \in D$ is a local minimum of $f$ if $\exists r > 0 \ \forall \bar{x} \in B(\bar{a}, r): f(\bar{x}) \geq f(\bar{a})$.
3. $\bar{a} \in D$ is a global maximum or absolute maximum of $f$ if $\forall \bar{x} \in D: f(\bar{x}) \leq f(\bar{a})$.
4. $\bar{a} \in D$ is a global minimum or absolute minimum of $f$ if $\forall \bar{x} \in D: f(\bar{x}) \geq f(\bar{a})$.

### Definition -- Critical Point
Let $f: D \rightarrow \mathbb{R}$ with $D \subseteq \mathbb{R}^2$ and let $\bar{a} \in D$ be such that $f$ is differentiable at $\bar{a}$. We say that $\bar{a}$ is a critical point of $f$ if

$$
f_x(\bar{a}) = f_y(\bar{a}) = 0.
$$

Generally, point $p$ s.t.
$$\boxed{\nabla f(p) = \overrightarrow{0}}$$

### Theorem -- Extreme Value and Critical Point
Let $f: D \rightarrow \mathbb{R}$ with $D \subseteq \mathbb{R}^2$ and let $\bar{a} \in D$ be such that $f$ is differentiable in an open ball around $\bar{a}$. If $\bar{a}$ is a local maximum or minimum of $f$, then $\bar{a}$ is a critical point of $f$.

### Definition -- Saddle Point
Let $f: D \rightarrow \mathbb{R}$ with $D \subset \mathbb{R}^2$ and let $\bar{a} \in D$ be such that $f$ is differentiable in an open ball around $\bar{a}$. We say that $\bar{a}$ is a saddle point of $f$ if $\bar{a}$ is a critical point and $\bar{a}$ is not a local minimum or local maximum.

### ⭐<font color="#ff0000">Second Derivative Test</font> (for <u>function with two variables</u>)
Let $f: D \rightarrow \mathbb{R}$ with $D \subseteq \mathbb{R}^2$ and let $\bar{a} \in D$ be such that the second derivatives of $f$ are continuous on an open ball around $\bar{a}$. Suppose that $\bar{a}$ is a critical point of $f$ and consider the matrix of second derivatives $Q(\bar{a})$ at $\bar{a}$:

$$
Q(\bar{a}) = \begin{pmatrix}
f_{xx}(\bar{a}) & f_{xy}(\bar{a}) \\
f_{yx}(\bar{a}) & f_{yy}(\bar{a})
\end{pmatrix}
$$

1. If $\det{Q(\bar{a})} > 0$ and $f_{xx}(\bar{a}) > 0$, then $\bar{a}$ is a local minimum of $f$.
2. If $\det{Q(\bar{a})} > 0$ and $f_{xx}(\bar{a}) < 0$, then $\bar{a}$ is a local maximum of $f$.
3. If $\det{Q(\bar{a})} < 0$, then $\bar{a}$ is a saddle point of $f$.
4. If $\det{Q(\bar{a})} = 0$, then we get no information about the point $\bar{a}$.

### <i>※ Hessian Matrix (for more than two variables)</i>
For functions with more than two variables, if we want to know if a critical point $\bar{a}$ is a local maximum, local minimum, or saddle point, we can use the Hessian Matrix:

$$
H(f) = \begin{bmatrix}
\frac{\partial^2 f}{\partial x_1^2} & \frac{\partial^2 f}{\partial x_1 \partial x_2} & \cdots & \frac{\partial^2 f}{\partial x_1 \partial x_n} \\
\frac{\partial^2 f}{\partial x_2 \partial x_1} & \frac{\partial^2 f}{\partial x_2^2} & \cdots & \frac{\partial^2 f}{\partial x_2 \partial x_n} \\
\vdots & \vdots & \ddots & \vdots \\
\frac{\partial^2 f}{\partial x_n \partial x_1} & \frac{\partial^2 f}{\partial x_n \partial x_2} & \cdots & \frac{\partial^2 f}{\partial x_n^2}
\end{bmatrix}
$$

- If $H(f)$ is a positive definite matrix at point $\bar{a}$, then $\bar{a}$ is a local minimum.
- If $H(f)$ is a negative definite matrix at point $\bar{a}$, then $\bar{a}$ is a local maximum.
- If $H(f)$ is an indefinite matrix at point $\bar{a}$, then $\bar{a}$ is a saddle point.

## Extreme Value Theorem
Let $f: D \rightarrow \mathbb{R}$ be a function where $D \subseteq \mathbb{R}$ is a bounded region that contains all of its boundary points. **If $f$ is continuous, then $f$ achieves its minimum and maximum values on $D$.**
i.e., there exists $\bar{a} \in D$ such that $\bar{a}$ is a global minimum for $f$ and there exists $\bar{b} \in D$ such that $\bar{b}$ is a global maximum for $f$.

## Exercises
**General Steps**:
1. Calc gradient $\nabla f(x, y)$.
2. Set $\nabla f(x, y) = \overrightarrow{0}$ to find critical points.
3. Get Hessian Matrix  (Q)
4. Eval $\det Q$ and $f_{xx}$ at critical points to classify critical points.

 >  Let $z = z(x, y)$ be determined by the equation $x^2 - 6 x y + 10 y^2 - 2 y z - z^2 + 18 = 0$. Find the extreme values of $z$.

>  **Solution**:
>  Let $z = z(x, y)$ be determined by the equation $x^2 - 6xy + 10y^2 - 2yz - z^2 + 18 = 0$. Find the extreme values of $z$.
>  First, we take the partial derivatives and then substitute $z_x, z_y$ by 0:
> $$2x - 6y - 2yz_x - 2zz_x = 0$$
> $$-6x + 20y - 2z - 2yz_y - 2zz_y = 0$$
> And by applying $z_x = 0$ and $z_y = 0$, we can solve that $x = 3yz = y$.
> With the original equation $x^2 - 6xy + 10y^2 - 2yz - z^2 + 18 = 0$, we can get $y = \pm 3$. So the critical points are $(9, 3)$ and $(-9, -3)$, and $z$ is 3, -3 correspondingly.
> To check the local maximum and minimum, we take the second partial derivative:
> $$(1 - y)z_x - (z_x)^2 - z_{xx} = 0$$
> $$-3 - z_x y z_y - z_y z_x - z_{xy} = 0$$
>  $$10 - z_y^3 - z_{yy} - (z_y)^2 - z_{yy} = 0$$
> $$z_{xx} = \frac{1}{(y+z)} z_{xy} = -\frac{3}{(y+z)} z_{yy} = \frac{10}{(y-z)}$$
> At point $(9, 3)$, the determinant of the Hessian
> $$z_{xx} z_{yy} - (z_{xy})^2 = \frac{1}{36} > 0,$$
> and $z_{xx} = \frac{1}{6} > 0$, so $(9, 3, 3)$ is a local minimum.
> At point $(-9, -3)$, the determinant of the Hessian
> $$z_{xx} z_{yy} - (z_{xy})^2 = \frac{1}{36} > 0,$$
> and $z_{xx} = -\frac{1}{6} < 0$, so $(-9, -3, -3)$ is a local maximum.




## ※<u>[期中不考]</u> Lagrange Multipliers: Solve EVP with Constraints
### Method of Lagrange Multipliers
#### 2-Variable Functions
1. Let $f(x, y)$ be a differentiable function. Suppose that we wish to find the maximum or minimum value of $f(x, y)$ **subject to the constraint $g(x, y) = k$ where $k = \text{const} \in \mathbb{R}$.** 
        In other words, we wish to **find the maximum or minimum value of $f(x, y)$ that lies on the curve $C$ described by $g(x, y) = k$.**
2. We obtain the maxima or minima of $f$ by solving the equations
$$
\boxed{\nabla f(x, y) = \lambda \nabla g(x, y), \quad g(x, y) = k}.
$$
#### 3-Variable Functions
Similar procedure holds.

To find the extreme values of a function $f (x, y, z)$ subject to the constraint $g (x, y, z) = k$ and $h (x, y, z) = c$, we solve the system of equations given by

$$
\nabla f(x, y, z) = \lambda \nabla g(x, y, z) + \mu \nabla h(x, y, z),
$$

together with the constraint equations

$$
g(x, y, z) = k, \quad h(x, y, z) = c.
$$

#### Exercise
>  $\frac{x^2}{a^2} + \frac{y^2}{b^2} + \frac{z^2}{c^2} = 1$, calculate the maximum of $f(x, y, z) = 8 x y z$.