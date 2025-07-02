## Directional Derivative

### Definition
Let $f: D \rightarrow \mathbb{R}$, where $D \subseteq \mathbb{R}$ be a function and let $\bar{a} \in D$ be such that $f$ is differentiable at $\bar{a}$. Let $\bar{u}$ be an n-dimensional <span style="background:#fff88f"><font color="#ff0000"><b>unit vector</b></font></span>. The directional derivative of $f$ in the direction of $\bar{u}$ at $\bar{a}$, written $D_{\bar{u}} f(\bar{a})$, is defined by

$$
D_{\bar{u}} f(\bar{a}) = \lim_{h \rightarrow 0} \frac{f(\bar{a} + h \bar{u}) - f(\bar{a})}{h}
$$

### Theorem: Relationship Between Directional Derivative and Gradient
Let $z = f(x, y)$ be differentiable on an open set $S$ containing $\left(x_0, y_0\right)$, and let $\bar{u} = \langle u_1, u_2 \rangle$ be a <span style="background:#fff88f"><font color="#ff0000"><b>unit vector</b></font></span>. The directional derivative of $f$ at $\left(x_0, y_0\right)$ in the direction of $\bar{u}$ is

$$
D_{\bar{u}} f\left(x_0, y_0\right) = f_x\left(x_0, y_0\right) u_1 + f_y\left(x_0, y_0\right) u_2.
$$

**More Generally:**
Let $f: D \rightarrow \mathbb{R}$ where $D \subseteq \mathbb{R}^n$ be such that $f$ is differentiable on $D$. Let $\bar{u}$ be an n-dimensional <span style="background:#fff88f"><font color="#ff0000"><b>unit vector</b></font></span>. Then for all $\bar{x} \in D$,

$$
\color{red}\boxed{D_{\bar{u}} f(\bar{x}) = \nabla f(\bar{x}) \cdot \bar{u}\quad \text{(梯度和方向导数的关系)}}
$$

## Gradient

### Definition
If $f: D \rightarrow \mathbb{R}$ where $D \subseteq \mathbb{R}^n$ and $\bar{a} \in D$ is a function that is differentiable at $\bar{a}$, then we call the derivative of $f$ at $\bar{a}$ as $Df(\bar{a})$ (the gradient of $f$ at $\bar{a}$), and write $\nabla f(\bar{a})$ when we are thinking about this entity as <u>an n-dimensional vector</u>.

Let $z = f(x, y)$ be differentiable on an open set $S$ that contains the point $\left(x_0, y_0\right)$.
The gradient of $f$ is $\nabla f(x, y) = \langle f_x(x, y), f_y(x, y) \rangle = \langle \frac{\partial f}{\partial x}(x, y), \frac{\partial f}{\partial y}(x, y) \rangle$. 
The gradient of $f$ at $\left(x_0, y_0\right)$ is $\nabla f\left(x_0, y_0\right) = \langle f_x\left(x_0, y_0\right), f_y\left(x_0, y_0\right) \rangle= \langle \frac{\partial f}{\partial x}\left(x_0, y_0\right), \frac{\partial f}{\partial y}\left(x_0, y_0\right) \rangle$.

If $f(x, y, z)$ is differentiable on an open ball $D \subseteq \mathbb{R}^3$, then the gradient of $f$ is given by
$$
\begin{aligned}
\nabla f(x, y, z) &= f_x(x, y, z) \mathbf{i} + f_y(x, y, z) \mathbf{j} + f_z(x, y, z) \mathbf{k} \\
&= \frac{\partial f}{\partial x} \mathbf{i} + \frac{\partial f}{\partial y} \mathbf{j} + \frac{\partial f}{\partial z} \mathbf{k}.
\end{aligned}
$$
**More generally, if $f: D \rightarrow \mathbb{R}$ where $D \subseteq \mathbb{R}^n$ is differentiable at $\bar{a} \in D$, then the gradient of $f$ at $\bar{a}$ is given by**
$$
\color{red}\boxed{\nabla f(\bar{a}) = \langle f_{x_1}(\bar{a}), f_{x_2}(\bar{a}), \ldots, f_{x_n}(\bar{a}) \rangle = \langle \frac{\partial f}{\partial x_1}(\bar{a}), \frac{\partial f}{\partial x_2}(\bar{a}), \ldots, \frac{\partial f}{\partial x_n}(\bar{a}) \rangle. }
$$

### Theorem
>  The direction of the gradient of $f$ at $\bar{a}$ is the direction that the value of $f$ increases most rapidly.

Let $z = f(x, y)$ be differentiable on an open set $S$ with gradient $\nabla f$, let $P = \left(x_0, y_0\right)$ be a point in $S$ and let $\vec{u}$ be a unit vector.
1. The maximum value of $D_{\vec{u}} f\left(x_0, y_0\right)$ is $\left\|\nabla f\left(x_0, y_0\right)\right\|$; the direction of maximal $z$ increase is $\nabla f\left(x_0, y_0\right)$.
2. The minimum value of $D_{\vec{u}} f\left(x_0, y_0\right)$ is $-\left\|\nabla f\left(x_0, y_0\right)\right\|$; the direction of minimal $z$ increase is $-\nabla f\left(x_0, y_0\right)$.
3. At $P$, $\nabla f\left(x_0, y_0\right)$ is orthogonal to the **level curve(等值线)** passing through $\left(x_0, y_0, f\left(x_0, y_0\right)\right)$.
    >  <font color="#7f7f7f">Proof</font>:
$$
\color{grey}
D_{\vec{u}} f(\vec{x}) = \nabla f(\vec{x}) \cdot \vec{u}. \Rightarrow
\nabla f \cdot \vec{u} = \|\nabla f\|\|\vec{u}\| \cos \theta = \|\nabla f\| \cos \theta
$$
### Properties
Let the partial derivatives of the functions $u(x,y,z)$ and $v(x,y,z)$ all exist and be continuous, we have
- $\nabla(u+v) = \nabla u + \nabla v$
- $\nabla(\alpha u) = \alpha \nabla u$ for any constant $\alpha$
- $\nabla(uv) = u \nabla v + v \nabla u$
- $\displaystyle \nabla\left(\frac{u}{v}\right) = \frac{v \nabla u - u \nabla v}{v^2}$
## Exercises
#### Directional Derivative
1. Find the directional derivative $D_{\vec{u}} f(2,0)$ where $f(x, y) = x e^{x y} + y$ and $\vec{u}$ is the unit vector in the direction of $\theta = \frac{2 \pi}{3}$.
2. Find the directional derivative $D_{\vec{u}} f(x, y, z)$ where $f(x, y, z) = x^2 z + y^3 z^2 - x y z$ in the direction of $\vec{v} = \langle -1, 0, 3 \rangle$.
#### Gradient
1. Since we know the gradient vector $\nabla f\left(x_0, y_0\right)$ is orthogonal (or perpendicular) to the level curve $f(x, y) = k$ at the point $\left(x_0, y_0\right)$. Prove that the gradient vector $\nabla f\left(x_0, y_0, z_0\right)$ is orthogonal to the level surface $f(x, y, z) = k$ passing through the point $\left(x_0, y_0, z_0\right)$.
2. Let $f(x, y) = \sin x \cos y$ and let $\mathrm{P} = (\pi / 3, \pi / 3)$. Find the directions of maximal/minimal increase, and find a direction where the instantaneous rate of $z$ change is 0.
3. Consider the surface given by $f(x, y) = 20 - x^2 - 2 y^2$. Water is poured on the surface at $(1, 1/4)$. What path does it take as it flows downhill?



## Reference Answers
#### D 1
The unit vector in the direction $\theta$ is:

$$
\vec{u} = \left( \cos \theta, \sin \theta \right) = \left( \cos \frac{2\pi}{3}, \sin \frac{2\pi}{3} \right) = \left( -\frac{1}{2}, \frac{\sqrt{3}}{2} \right).
$$
Thus:
$$
\frac{\partial f}{\partial x} = e^{xy} + x y e^{xy}, \quad \frac{\partial f}{\partial y} = x^2 e^{xy} + 1.
$$
At $(2, 0)$:
$$
\frac{\partial f}{\partial x}(2, 0) = e^{0} + 2 \cdot 0 \cdot e^{0} = 1, \quad \frac{\partial f}{\partial y}(2, 0) = 4 e^{0} + 1 = 5.
$$
Thus:
$$
\nabla f(2, 0) = (1, 5).
$$
So we can get
$$
D_{\vec{u}} f(2, 0) = \nabla f(2, 0) \cdot \vec{u} = (1, 5) \cdot \left( -\frac{1}{2}, \frac{\sqrt{3}}{2} \right) = -\frac{1}{2} + \frac{5\sqrt{3}}{2} = \frac{5\sqrt{3} - 1}{2}.
$$
**Final Answer:**

$$
\boxed{\frac{5\sqrt{3} - 1}{2}}
$$


---
#### D 2
<font color="#ff0000">First, <b>normalize</b> </font>$\vec{v}$:

$$
\|\vec{v}\| = \sqrt{(-1)^2 + 0^2 + 3^2} = \sqrt{1 + 9} = \sqrt{10}.
$$

Thus:
$$
\vec{u} = \frac{\vec{v}}{\|\vec{v}\|} = \left( -\frac{1}{\sqrt{10}}, 0, \frac{3}{\sqrt{10}} \right).
$$
Then:
$$
\frac{\partial f}{\partial x} = 2x z - y z, \quad \frac{\partial f}{\partial y} = 3 y^2 z^2 - x z, \quad \frac{\partial f}{\partial z} = x^2 + 2 y^3 z - x y.
$$

So:

$$
\nabla f(x, y, z) = \left( 2x z - y z, 3 y^2 z^2 - x z, x^2 + 2 y^3 z - x y \right).
$$
Directional Derivative:
$$
D_{\vec{u}} f(x, y, z) = \nabla f(x, y, z) \cdot \vec{u} = \left( 2x z - y z \right) \left( -\frac{1}{\sqrt{10}} \right) + \left( 3 y^2 z^2 - x z \right) \cdot 0 + \left( x^2 + 2 y^3 z - x y \right) \left( \frac{3}{\sqrt{10}} \right).
$$

Simplify:

$$
D_{\vec{u}} f(x, y, z) = \frac{ - (2x z - y z) + 3 (x^2 + 2 y^3 z - x y) }{ \sqrt{10} }.
$$
**Final Answer:**

$$
\boxed{ \frac{ 3x^2 - 3x y + 6 y^3 z - 2x z + y z }{ \sqrt{10} } }
$$

#### G 1
To prove that the gradient vector $\nabla f(x_0, y_0, z_0)$ is orthogonal to the level surface $f(x, y, z) = k$ at the point $(x_0, y_0, z_0)$, we proceed as follows.

Consider the level surface defined by $f(x, y, z) = k$ passing through the point $(x_0, y_0, z_0)$. Let $\mathbf{r}(t) = (x(t), y(t), z(t))$ be any smooth curve lying on this level surface that passes through $(x_0, y_0, z_0)$ at $t = t_0$, so that:

$$
\mathbf{r}(t_0) = (x_0, y_0, z_0) \quad \text{and} \quad f(x(t), y(t), z(t)) = k \quad \text{for all} \quad t.
$$


Since $f$ is constant along the curve, the derivative of $f$ with respect to $t$ is zero:

$$
\frac{d}{dt} f(x(t), y(t), z(t)) = 0.
$$


By the chain rule, we have:

$$
\frac{\partial f}{\partial x} \frac{dx}{dt} + \frac{\partial f}{\partial y} \frac{dy}{dt} + \frac{\partial f}{\partial z} \frac{dz}{dt} = 0.
$$


Evaluating at $t = t_0$ and the point $(x_0, y_0, z_0)$:

$$
\left. \frac{\partial f}{\partial x} \right|_{(x_0, y_0, z_0)} \left. \frac{dx}{dt} \right|_{t_0} + \left. \frac{\partial f}{\partial y} \right|_{(x_0, y_0, z_0)} \left. \frac{dy}{dt} \right|_{t_0} + \left. \frac{\partial f}{\partial z} \right|_{(x_0, y_0, z_0)} \left. \frac{dz}{dt} \right|_{t_0} = 0.
$$


This equation can be written as the dot product of the gradient vector $\nabla f(x_0, y_0, z_0) = \left( \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z} \right)$ evaluated at $(x_0, y_0, z_0)$ and the tangent vector $\mathbf{T} = \left( \frac{dx}{dt}, \frac{dy}{dt}, \frac{dz}{dt} \right)$ to the curve at $t = t_0$:

$$
\nabla f(x_0, y_0, z_0) \cdot \mathbf{T} = 0.
$$


This holds for the tangent vector $\mathbf{T}$ of any smooth curve on the level surface passing through $(x_0, y_0, z_0)$. The set of all such tangent vectors spans the tangent plane to the level surface at $(x_0, y_0, z_0)$. Therefore, $\nabla f(x_0, y_0, z_0)$ is orthogonal to every vector in the tangent plane, and hence orthogonal to the level surface itself at $(x_0, y_0, z_0)$.

Thus, the gradient vector $\nabla f(x_0, y_0, z_0)$ is orthogonal to the level surface $f(x, y, z) = k$ at the point $(x_0, y_0, z_0)$.
#### G 2
Given the function:

$$
f(x, y) = \sin x \cos y
$$

and the point:

$$
P = \left( \frac{\pi}{3}, \frac{\pi}{3} \right).
$$

The gradient of $f$ is:

$$
\nabla f = \left( \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y} \right) = (\cos x \cos y, -\sin x \sin y).
$$


Evaluate at $P = \left( \frac{\pi}{3}, \frac{\pi}{3} \right)$:

$$
\cos \left( \frac{\pi}{3} \right) = \frac{1}{2}, \quad \sin \left( \frac{\pi}{3} \right) = \frac{\sqrt{3}}{2}.
$$

Thus:

$$
\nabla f \left( \frac{\pi}{3}, \frac{\pi}{3} \right) = \left( \frac{1}{2} \cdot \frac{1}{2}, -\frac{\sqrt{3}}{2} \cdot \frac{\sqrt{3}}{2} \right) = \left( \frac{1}{4}, -\frac{3}{4} \right).
$$

The direction of **maximal increase** is the direction of the gradient. The unit vector is:

$$
\mathbf{u}_{\text{max}} = \frac{\nabla f}{\|\nabla f\|} = \frac{ \left( \frac{1}{4}, -\frac{3}{4} \right) }{ \sqrt{ \left( \frac{1}{4} \right)^2 + \left( -\frac{3}{4} \right)^2 } } = \frac{ \left( \frac{1}{4}, -\frac{3}{4} \right) }{ \frac{\sqrt{10}}{4} } = \left( \frac{1}{\sqrt{10}}, -\frac{3}{\sqrt{10}} \right).
$$

The direction of **minimal increase** is opposite to the gradient. The unit vector is:

$$
\mathbf{u}_{\text{min}} = -\mathbf{u}_{\text{max}} = \left( -\frac{1}{\sqrt{10}}, \frac{3}{\sqrt{10}} \right).
$$

The instantaneous rate of change is zero in any direction orthogonal to the gradient. Let $\mathbf{v} = (a, b)$ satisfy:

$$
\nabla f \cdot \mathbf{v} = 0 \implies \frac{1}{4}a - \frac{3}{4}b = 0 \implies a = 3b.
$$

Thus, a valid direction is $(3, 1)$. The unit vector is:

$$
\mathbf{u}_{\text{zero}} = \frac{(3, 1)}{\sqrt{3^2 + 1^2}} = \left( \frac{3}{\sqrt{10}}, \frac{1}{\sqrt{10}} \right).
$$

---

#### G 3
Given the surface:

$$
f(x, y) = 20 - x^2 - 2y^2,
$$

with water poured at the point $(1, \frac{1}{4})$.

The gradient is:

$$
\nabla f = \left( \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y} \right) = (-2x, -4y).
$$

At $(1, \frac{1}{4})$:

$$
\nabla f(1, \frac{1}{4}) = (-2 \cdot 1, -4 \cdot \frac{1}{4}) = (-2, -1).
$$
Water flows in the direction opposite to the gradient:

$$
-\nabla f = (2, 1).
$$
The path $\mathbf{r}(t) = (x(t), y(t))$ satisfies:

$$
\frac{d\mathbf{r}}{dt} = -\nabla f \implies \frac{dx}{dt} = 2x, \quad \frac{dy}{dt} = 4y.
$$

Initial condition: $\mathbf{r}(0) = (1, \frac{1}{4})$.

Solve the ODEs:
1. For $x(t)$:
$$
\frac{dx}{dt} = 2x \implies \int \frac{dx}{x} = \int 2 \, dt \implies \ln|x| = 2t + C_1.
$$
At $t = 0$, $x = 1$, so $C_1 = 0$. Thus:
$$
x(t) = e^{2t}.
$$
2. For $y(t)$:
$$
\frac{dy}{dt} = 4y \implies \int \frac{dy}{y} = \int 4 \, dt \implies \ln|y| = 4t + C_2.
$$
At $t = 0$, $y = \frac{1}{4}$, so $\ln \frac{1}{4} = C_2$. Thus:
$$
y(t) = \frac{1}{4} e^{4t}.
$$
From $x = e^{2t}$, we have $t = \frac{1}{2} \ln x$. Substitute into $y(t)$:
$$
y = \frac{1}{4} e^{4 \cdot \frac{1}{2} \ln x} = \frac{1}{4} e^{2 \ln x} = \frac{1}{4} x^2.
$$

The water flows along the path:
$$
y = \frac{1}{4} x^2.
$$

