## Chain Rule
**Theorem.** Let $u$ be a differentiable function of $n$ variables $x_1, \cdots, x_n$ s.t. for all $1 \leq i \leq n$, $x_i$ is a differentiable function of $m$ variables $t_1, \cdots, t_m$. Then $u$ is a function of $t_1, \cdots, t_m$ and for all $1 \leq j \leq m$, we have
$$
\dfrac{\partial u}{\partial t_j} = \sum_{1 \leq i \leq n} \dfrac{\partial u}{\partial x_i} \dfrac{\partial x_i}{\partial t_j}.
$$
### Example: $i=2, j=1: f(x,y) \text{ with } x(t), y(t)$ 
Let $x = g(t)$ and $y = h(t)$ be functions that are differentiable on an interval $I$. Let $z = f(x,y)$ be a function that is differentiable at the points with $x$-coordinate in the range of $g$ restricted to $I$, and $y$-coordinates in the range of $h$ restricted to $I$. Then $f(x,y)$ is differentiable with respect to $t$ on the interval $I$ and

$$
\dfrac{\mathop{}\!\mathrm{d}f}{\mathop{}\!\mathrm{d}t} = \dfrac{\partial f}{\partial x} \dfrac{\mathop{}\!\mathrm{d}x}{\mathop{}\!\mathrm{d}t} + \dfrac{\partial f}{\partial y} \dfrac{\mathop{}\!\mathrm{d}y}{\mathop{}\!\mathrm{d}t}.
$$
### Example: $i=2, j=2: z=f(x,y) \text{ with } x(s,t), y(s,t)$ 
Suppose that $z = f(x,y)$ is a differentiable function of $x$ and $y$ where $x(s,t)$ and $y(s,t)$ are differentiable functions. Then

$$
\begin{aligned}
\dfrac{\partial z}{\partial s} &= \dfrac{\partial z}{\partial x} \dfrac{\partial x}{\partial s} + \dfrac{\partial z}{\partial y} \dfrac{\partial y}{\partial s}, \\
\dfrac{\partial z}{\partial t} &= \dfrac{\partial z}{\partial x} \dfrac{\partial x}{\partial t} + \dfrac{\partial z}{\partial y} \dfrac{\partial y}{\partial t}.
\end{aligned}
$$
### Exercises
1. Find $\displaystyle\frac{dz}{dt}$ for $\displaystyle z = xe^{xy}$, $\displaystyle x = t^2$, $\displaystyle y = t^{-1}$.
2. Find $\dfrac{\partial z}{\partial s}$ and $\dfrac{\partial z}{\partial t}$ for $z = e^{2r}\sin(3\theta)$, $r = st - t^2$, $\theta = \sqrt{s^2 + t^2}$.
## [[Implicit Differentiation：关于隐函数求导的解释]]
Assume that an equation $F(x,y) = 0$ defines $y$ implicitly as a differentiable function of $x$. If $F(x,y)$ is differentiable, then the chain rule tells us that

$$
\dfrac{\partial F}{\partial x} \dfrac{\mathop{}\!\mathrm{d} x}{\mathop{}\!\mathrm{d} x} + \dfrac{\partial F}{\partial y} \dfrac{\mathop{}\!\mathrm{d} y}{\mathop{}\!\mathrm{d} x} = 0.
$$

Therefore, if $\frac{\partial F}{\partial y} \neq 0$, then

$$
\dfrac{\mathop{}\!\mathrm{d}y}{\mathop{}\!\mathrm{d}x} = - \dfrac{F_x}{F_y}.
$$

Similarly, if $F(x,y,z) = 0$, we have

$$
\dfrac{\partial F}{\partial x} \dfrac{\partial x}{\partial x} + \dfrac{\partial F}{\partial y} \dfrac{\partial y}{\partial x} + \dfrac{\partial F}{\partial z} \dfrac{\partial z}{\partial x} = 0
$$
i.e.
$$
\frac{\partial F_x}{\partial x}+ \frac{\partial F_y}{\partial x} \frac{\partial y}{\partial x} + \frac{\partial F_z}{\partial x} = 0.  
$$

### Exercises
1. Let $e^{z}-xyz = 0$, calculate $\dfrac{\partial^2 z}{\partial x^2}$

2. Let $z^3 - 3xyz = a^3$, obtain $\dfrac{\partial^2 z}{\partial x \partial y}$
    

## Jacobian Matrix
#### Definition 
Suppose $F: \mathbb{R}^n \to \mathbb{R}^m$ is a function that maps from an n-dimensional space to an m-dimensional space. This function consists of $m$ functions: $f_1(x_1, x_2, \cdots, x_n), \cdots, f_m(x_1, x_2, \cdots, x_n)$. Then the Jacobian matrix is:

$$
J_{F}(x) = DF(x) = 
\begin{bmatrix}
\dfrac{\partial f_1}{\partial x_1} & \dfrac{\partial f_1}{\partial x_2} & \cdots & \dfrac{\partial f_1}{\partial x_n} \\ 
\dfrac{\partial f_2}{\partial x_1} & \dfrac{\partial f_2}{\partial x_2} & \cdots & \dfrac{\partial f_2}{\partial x_n} \\
\vdots & \vdots & \ddots & \vdots \\
\dfrac{\partial f_m}{\partial x_1} & \dfrac{\partial f_m}{\partial x_2} & \cdots & \dfrac{\partial f_m}{\partial x_n}
\end{bmatrix}
$$
#### Functionality
The Jacobian Matrix describes the derivative behavior of a multivariate function at a given point: The Jacobian matrix characterizes the derivatives of a multivariable function in all directions at that point, illustrating how it locally responds linearly to changes in input variables.
##### 1. Linear Approximation
If a function $F: \mathbb{R}^n \rightarrow \mathbb{R}^m$ is differentiable at a point $p(t_{1}\cdots t_{n})$, then in a neighborhood around $p$, it can be approximated as:

$$
F(x) \approx F(p) + DF(p)(x - p)
$$

This is analogous to the single-variable Taylor expansion:

$$
f(x) \approx f(a) + f'(a)(x - a)
$$

Here, $DF(p)$, the Jacobian matrix at $p$, generalizes the derivative to the multivariable case.
##### 2. **Chain Rule (Differentiation of Composite Functions)**

For a composite function $u = f(x_1, x_2, \dots, x_n)$, where each $x_i$ depends on variables $t_1, \dots, t_m$, we have:

$$
\frac{\partial u}{\partial t_j} = \sum_{i=1}^{n} \frac{\partial u}{\partial x_i} \cdot \frac{\partial x_i}{\partial t_j}
$$

In matrix form, this is simply the product of Jacobian matrices:

$$
D(u \circ x)(t) = Du(x(t)) \cdot Dx(t)
$$
##### 3. **Coordinate Transformations (Change of Variables in Integrals)** (After Midterm)

When performing a change of variables in multivariable integration, the Jacobian determinant appears as a volume-scaling factor:

$$
\iint_R f(x, y) \, dx \, dy = \iint_{R'} f(x(u, v), y(u, v)) \left| \frac{\partial(x, y)}{\partial(u, v)} \right| \, du \, dv
$$

Here, $\left| \frac{\partial(x, y)}{\partial(u, v)} \right|$ is the **Jacobian determinant**, which measures how area (or volume in higher dimensions) is distorted under the transformation from $(u,v)$ to $(x,y)$.

## Properties of Differentiation

Let $f: D \to \mathbb{R}$ and $g: D \to \mathbb{R}$, where $D$ is an open ball of $\mathbb{R}^n$, be functions that are differentiable at $\bar{a} \in D$. Let $\alpha \in \mathbb{R}$. Then
1. $f + g$ is differentiable at $\bar{a}$: $D(f+g)(\bar{a}) = Df(\bar{a}) + Dg(\bar{a})$.
2. $\alpha f$ is differentiable at $\bar{a}$: $D(\alpha f)(\bar{a}) = \alpha Df(\bar{a})$.
3. $D(fg)(\bar{a}) = g(\bar{a})Df(\bar{a}) + f(\bar{a})Dg(\bar{a})$.
4. $D(f/g)(\bar{a}) = \dfrac{g(\bar{a})Df(\bar{a}) - f(\bar{a})Dg(\bar{a})}{g(\bar{a})^2}$.
Similar to single variable differenentiation.

## Reference Answers
### CR 1
> **Answer:**
>      $$\boxed{\frac{dz}{dt} =e^{t}(t^2 + 2t)}$$

### CR 2
> **Answers:**
> $$\frac{\partial z}{\partial s} = \boxed{e^{2r}\left(2t\sin(3\theta) + \frac{3s\cos(3\theta)}{\sqrt{s^2 + t^2}}\right)}$$
> $$\frac{\partial z}{\partial t} = \boxed{e^{2r}\left(2(s - 2t)\sin(3\theta) + \frac{3t\cos(3\theta)}{\sqrt{s^2 + t^2}}\right)}$$

### ID 1
> ![|550x270](./assets/Chain%20Rule/file-$20250622185054.jpeg)
> ![|343x127](./assets/Chain%20Rule/file-$20250622185102.jpeg)

### ID 2
> ![|550x344](./assets/Chain%20Rule/file-$20250622185125.jpeg)

