# VV255 Mid RC Part IV Solutions

TA: Chengyang Shi

Email: scy_forever@sjtu.edu.cn

In this part of our RC, we will discuss some skills in solving exercises to help you better prepare for the exam.

This RC might not cover all of the content that might be tested in the exam, so you still need to review the slides and homework carefully. It's just a quick review of some frequently tested problems.

## Linear Algebra

For the linear algebra part, you can refer to the "LA Guide", which I have already provided in the QQ Group.

Here I will give you some exercises for you to practice.

### What you have to remember before the exam

- [ ] How to find the rref of a matrix
- [ ] How to calculate the inverse, determinant, matrix multiplication......
- [ ] How to find the kernel, image, basis, rank, and nullity......
- [ ] How to find the orthogonal projection matrix

**If you still don't know how to do this, refer to our RCs, lecture slides, or the LA Guide!**

### Exercise 1  QR Decomposition

Find the QR decomposition of the matrix using Gram-Schmidt orthogonalization.

​                                                                         $A = \begin{bmatrix} 1 & 5 & 8 \\ 1 & -1 & 4 \\ 1 & 5 & 2 \\ 1 & -1 & -2 \end{bmatrix}$

**Solution**

 Let $A = \begin{bmatrix} v_1 & v_2 & v_3 \end{bmatrix}$

set $q_1 = \frac{v_1}{||v_1||} = \frac{v_1}{2} = \begin{bmatrix} 1/2 \\ 1/2 \\ 1/2 \\ 1/2 \end{bmatrix}$



$\tilde{q_2} = v_2 - q_1 \langle q_1, v_2 \rangle = \begin{bmatrix} 5 \\ -1 \\ 5 \\ -1 \end{bmatrix} - \begin{bmatrix} 1/2 \\ 1/2 \\ 1/2 \\ 1/2 \end{bmatrix} \left\langle \begin{bmatrix} 1/2 \\ 1/2 \\ 1/2 \\ 1/2 \end{bmatrix}, \begin{bmatrix} 5 \\ -1 \\ 5 \\ -1 \end{bmatrix} \right\rangle = \begin{bmatrix} 3 \\ -3 \\ 3 \\ -3 \end{bmatrix}$

$q_2 = \frac{\tilde{q_2}}{||\tilde{q_2}||} = \frac{\tilde{q_2}}{6} = \begin{bmatrix} 1/2 \\ -1/2 \\ 1/2 \\ -1/2 \end{bmatrix}$

$\tilde{q_3} = v_3 - q_1 \langle q_1, v_3 \rangle - q_2 \langle q_2, v_3 \rangle$

$= \begin{bmatrix} 8 \\ 4 \\ 2 \\ -2 \end{bmatrix} - \begin{bmatrix} 1/2 \\ 1/2 \\ 1/2 \\ 1/2 \end{bmatrix} \left\langle \begin{bmatrix} 1/2 \\ 1/2 \\ 1/2 \\ 1/2 \end{bmatrix}, \begin{bmatrix} 8 \\ 4 \\ 2 \\ -2 \end{bmatrix} \right\rangle - \begin{bmatrix} 1/2 \\ -1/2 \\ 1/2 \\ -1/2 \end{bmatrix} \left\langle \begin{bmatrix} 1/2 \\ -1/2 \\ 1/2 \\ -1/2 \end{bmatrix}, \begin{bmatrix} 8 \\ 4 \\ 2 \\ -2 \end{bmatrix} \right\rangle = \begin{bmatrix} 3 \\ 3 \\ -3 \\ -3 \end{bmatrix}$

$q_3 = \frac{\tilde{q_3}}{||\tilde{q_3}||} = \frac{\tilde{q_3}}{6} = \begin{bmatrix} 1/2 \\ 1/2 \\ -1/2 \\ -1/2 \end{bmatrix}$

So we have $v_1 = 2q_1$, $v_2 = 4q_1 + 6q_2$, $v_3 = 6q_1 + 4q_2 + 6q_3$
hence the QR decomp. of A is given by

$A = QR = \begin{bmatrix} 1/2 & 1/2 & 1/2 \\ 1/2 & -1/2 & -1/2 \\ 1/2 & 1/2 & -1/2 \\ 1/2 & -1/2 & -1/2 \end{bmatrix} \begin{bmatrix} 2 & 4 & 6 \\ 0 & 6 & 4 \\ 0 & 0 & 6 \end{bmatrix}$

### Exercise 2  Matrix Basic

$A = \begin{bmatrix} 1 & 2 & 4 & 1 \\ 0 & 3 & 9 & 6 \\ 0 & 0 & 0 & 2 \\ 1 & 2 & 4 & 2 \end{bmatrix}$ 

(i) Find a basis for $\text{im}(A)$. Explain.

(ii) Find a basis for ker(A). Explain.

(iii) Find dim ker(A). Explain.

(iv) Find rank(A). Explain.

(v) Find det(A). Explain.

**Solution**

(i) The RREF of A is given by
$$
\begin{bmatrix}
1 & 0 & -2 & 0 \\
0 & 1 & 3 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 0 & 0
\end{bmatrix}
$$
A basis of $im A$ can be chosen as
$$
\left\{ \begin{bmatrix} 1 \\ 0 \\ 0 \\ 1 \end{bmatrix}, \begin{bmatrix} 2 \\ 3 \\ 0 \\ 2 \end{bmatrix}, \begin{bmatrix} 1 \\ 6 \\ 2 \\ 2 \end{bmatrix} \right\}
$$

(ii) From the RREF, the sol'n of $Ax=0$ is given by
$x_1 = 2x_3$
$x_2 = -3x_3$
$x_3 = x_3$
$x_4 = 0$

hence a basis of $ker A$ can be chosen as
$$
\left\{ \begin{bmatrix} 2 \\ -3 \\ 1 \\ 0 \end{bmatrix} \right\}
$$

(iii)  $dim\ ker\ A = 1$ b/c size of basis of $ker\ A = 1$

(iv) $rank\ A = 3$ b/c size of basis of $im\ A = 3$

(v) $det\ A = 0$ b/c
$ker\ A \neq \{0\}$ or $rank\ A = 3 < 4$.
or there is 0 on the diagonal of RREF.

## Multiple Variable Calculus

### What you have to remember before the exam

- [ ] Judge whether a limit exists/not
- [ ] The formula for derivative and integral (Especially the trigonometric function and antitrigonometric function)
- [ ] The definition of **curvature** and **tangent, normal, binormal vectors**, and the **corresponding formulas** （You must be very familiar with the concepts which occur in **chap 13** !）
- [ ] **Chain Rule** and **Jacobian Matrix** in Multivariable Calculus
- [ ] Gradient
- [ ] How to find **local max/min**, **global max/min** (You have already seen it in 156, you know it's important in Prof.Cai's exam!)

### Limit

Evaluate the limit in different direction / Change the coordinates 

#### Exercise 3

Determine whether $\lim_{(x,y) \to (0,0)} \frac{2xy}{x^2 + y^2}$ exists.

**Solution**

Along the line $x=y$, let $x=y=t$, then
$$ \lim_{t \to 0} \frac{2t^2}{t^2 + t^2} = 1 $$

Along the line $x+y=0$, let $x=-y=t$, then
$$ \lim_{t \to 0} \frac{2t(-t)}{t^2 + (-t)^2} = -1 \neq 1 $$

So the limit does not exist.

Rem can also use polar coord., e.g.,

$$ \lim_{r \to 0} \frac{2(r\cos\theta)(r\sin\theta)}{(r\cos\theta)^2 + (r\sin\theta)^2} = \lim_{r \to 0} 2\cos\theta\sin\theta \quad \text{does not exist,} $$

### Motion in 3D Space

Given a function $r(t)$

Unit Tangent Vector: $\mathbf{T}(t) = \frac{\mathbf{r}'(t)}{|\mathbf{r}'(t)|}$

Unit Normal Vector: $\mathbf{N}(t) = \frac{\mathbf{T}'(t)}{\lVert \mathbf{T}'(t) \rVert}$

Bionormal Component: $\mathbf{B}(t) = \mathbf{T}(t) \times \mathbf{N}(t)$

Curvature: $$\kappa(t) = \left\lVert \frac{d\mathbf{T}/dt}{ds/dt} \right\rVert = \frac{\lVert \mathbf{T}'(t) \rVert}{\lVert \mathbf{r}'(t) \rVert} = \frac{\lVert r'(t) \times r''(t) \rVert}{\lVert r'(t) \rVert^3}$$

Acceleration: $\mathbf{a} = v'\mathbf{T} + \kappa v^2\mathbf{N}$

Tangential Component: $a_T(t) = \frac{d}{dt} \lVert r'(t) \rVert = \frac{d}{dt} \sqrt{r'(t) \cdot r'(t)} = \frac{r'(t) \cdot r''(t)}{\lVert r'(t) \rVert}$

Normal Component: $a_N(t) = \kappa(t) \lVert r'(t) \rVert^2 = \lVert \mathbf{T}'(t) \rVert\lVert r'(t) \rVert = \frac{\lVert r'(t) \times r''(t) \rVert}{\lVert r'(t) \rVert} $

Then, Given a point $A(a_x,a_y,a_z)$, 

Normal Vector for Osculating Plane: $\mathbf{B}(t)$

Normal Vector for Normal Plane: $\mathbf{T}(t)$

Given a normal vector $(n_1,n_2,n_3)$ , we can calculate the plane going through $A$ with the normal vector by

$n_1(x-a_x) + n_2(y-a_y) + n_3(z-a_z) = 0$

#### Exercise 4

Let $r : \mathbb{R} \to \mathbb{R}^3$, $r(t) =  (\frac{t^2}{\sqrt{2}}, (t+1)e^{-t}, (t-1)e^t)$, $t > 0$ be a parametric curve of the position/displacement vector.

(i) Find the tangential and normal component $a_T$ and $a_N$ of the acceleration vector.

(ii) Find the curvature $\kappa (t)$

**Solution**

(i)
$r'(t) = (\sqrt{2}t, -te^{-t}, te^t)$
$r''(t) = (\sqrt{2}, (t-1)e^{-t}, (t+1)e^t)$

$||r'(t)|| = \sqrt{(\sqrt{2}t)^2 + (-te^{-t})^2 + (te^t)^2} = t(e^t + e^{-t})$

$a_T(t) = \frac{d}{dt}(||r'(t)||) = e^t + te^t + e^{-t} - te^{-t}$

$a_N(t) = \sqrt{||r''(t)||^2 - a_T(t)^2}$
$= \sqrt{2 + (t-1)^2e^{-2t} + (t+1)^2e^{2t} - (e^t + te^t + e^{-t} - te^{-t})^2}$
$= \sqrt{2}t$

(ii) 

The curvature is given by
$\kappa(t) = \frac{a_N(t)}{||r'(t)||^2} = \frac{\sqrt{2}}{t(e^t+e^{-t})^2}$

can also do $\kappa(t) = \frac{||r'(t) \times r''(t)||}{||r'(t)||^3} = \frac{\sqrt{2}}{t(e^t+e^{-t})^2}$

so $a_N(t) = \kappa(t) ||r'(t)|| = \sqrt{2}t$

$a_T(t) = \sqrt{||r''(t)||^2 - a_N(t)^2} = e^t + te^t + e^{-t} - te^{-t}$

or $a_T(t) = \left\langle r''(t), \frac{r'(t)}{||r'(t)||} \right\rangle = e^t + te^t + e^{-t} - te^{-t}$

### Chain Rule

$df = \frac{\partial f}{\partial x} dx + \frac{\partial f}{\partial y} dy$

In order to avoid forgetting using chain rule, in exercises, you can write $z$ as $z(x,y)$

#### Exercise 5

Let the function $z = z(x,y)$ be implicitly defined as $z + \sin z = xy$, express the mixed partial derivative $\frac{\partial^2 z}{\partial x \partial y}$ in terms of $z$ only, i.e., find the function $f$ such that $\frac{\partial^2 z}{\partial x \partial y} = f(z)$. (ignore the domain issue and focus on wherever the function is defined)

**Solution**

By either implicit diff or implicit fun thm,

e.g.,
$$ \frac{\partial z}{\partial x} + \cos z \frac{\partial z}{\partial x} = y \implies \frac{\partial z}{\partial x} = \frac{y}{1+\cos z} $$

$$ \frac{\partial z}{\partial y} + \cos z \frac{\partial z}{\partial y} = x \implies \frac{\partial z}{\partial y} = \frac{x}{1+\cos z} $$

or let $F(x,y,z) = z + \sin z - xy$, then by IFT

$$ \frac{\partial z}{\partial x} = - \frac{\frac{\partial F}{\partial x}}{\frac{\partial F}{\partial z}} = \frac{y}{1+\cos z} $$

$$ \frac{\partial z}{\partial y} = - \frac{\frac{\partial F}{\partial y}}{\frac{\partial F}{\partial z}} = \frac{x}{1+\cos z} $$

Then
$$ \frac{\partial^2 z}{\partial x \partial y} = \frac{\partial}{\partial x} \left( \frac{\partial z}{\partial y} \right) = \frac{\partial}{\partial x} \left( \frac{x}{1+\cos z} \right) $$

$$ = \frac{(1+\cos z) - x(-\sin z)\frac{\partial z}{\partial x}}{(1+\cos z)^2} $$

$$ = \frac{(1+\cos z) + x(\sin z) \left( \frac{y}{1+\cos z} \right)}{(1+\cos z)^2} $$

$$ = \frac{(1+\cos z)^2 + xy \sin z}{(1+\cos z)^3} $$

$$ = \frac{(1+\cos z)^2 + (z+\sin z)\sin z}{(1+\cos z)^3} := f(z) $$

### Gradient and Jocobian Matrix

The derivative of $f: U \subseteq \mathbb{R}^n \to \mathbb{R}^m$ at $a \in U$ is given by a linear function $\mathbf{D}f(a) : \mathbb{R}^n \to \mathbb{R}^m$, $v \mapsto \mathbf{D}f(a)v$. In matrix form,

$\mathbf{D}f(a) = \begin{bmatrix} \frac{\partial f_1}{\partial x_1}(a) & \dots & \frac{\partial f_1}{\partial x_n}(a) \\ \vdots & \ddots & \vdots \\ \frac{\partial f_m}{\partial x_1}(a) & \dots & \frac{\partial f_m}{\partial x_n}(a) \end{bmatrix}$

The matrix $\mathbf{D}f(a)$ is also called the Jacobian matrix of $f$ at $a$, also denoted $J_f(a)$.

**Chain Rule in Jacobian Matrix**

Given  $f : \mathbb{R}^n \to \mathbb{R}^m$, $y = f(x)$, with Jacobian $\mathbf{D}f(x)$ for all $x \in \mathbb{R}^n$, and * $g : \mathbb{R}^m \to \mathbb{R}^p$, $z = g(y)$, with Jacobian $\mathbf{D}g(y)$ for all $y \in \mathbb{R}^m$ Then the Jacobian of $g \circ f : \mathbb{R}^n \to \mathbb{R}^p$ at $x \in \mathbb{R}^n$ is given by $$ \mathbf{D}(g \circ f)(x) = \mathbf{D}g(f(x)) \circ \mathbf{D}f(x) $$

 In matrix notation,

 $$ \begin{bmatrix} \frac{\partial z_1}{\partial x_1}(x) & \dots & \frac{\partial z_1}{\partial x_n}(x) \\ \vdots & \ddots & \vdots \\ \frac{\partial z_p}{\partial x_1}(x) & \dots & \frac{\partial z_p}{\partial x_n}(x) \end{bmatrix} = \begin{bmatrix} \frac{\partial z_1}{\partial y_1}(f(x)) & \dots & \frac{\partial z_1}{\partial y_m}(f(x)) \\ \vdots & \ddots & \vdots \\ \frac{\partial z_p}{\partial y_1}(f(x)) & \dots & \frac{\partial z_p}{\partial y_m}(f(x)) \end{bmatrix} \begin{bmatrix} \frac{\partial y_1}{\partial x_1}(x) & \dots & \frac{\partial y_1}{\partial x_n}(x) \\ \vdots & \ddots & \vdots \\ \frac{\partial y_m}{\partial x_1}(x) & \dots & \frac{\partial y_m}{\partial x_n}(x) \end{bmatrix} $$



#### Exercise 6

Given a smooth function $g : \mathbb{R}^3 \to \mathbb{R}$, and $f : \mathbb{R}^2 \to \mathbb{R}$, $(x, y) \mapsto g(xy, x+y, x-y)$. Suppose $\nabla g(2, 3, 1) = (1, 2, 2)$, find $\nabla f(2, 1)$.

**Solution 1**

We define $h(x) : \mathbb{R}^2 \to \mathbb{R}^3$.
$(x_1, x_2) \to (x_1x_2, x_1+x_2, x_1-x_2)$.

$f(x) = g \circ h(x)$, we have $J_f = J_g(h(x)) \cdot J_h(x)$.

$$
\begin{bmatrix} \frac{\partial f}{\partial x_1} & \frac{\partial f}{\partial x_2} \end{bmatrix} = \begin{bmatrix} \frac{\partial g}{\partial h_1} & \frac{\partial g}{\partial h_2} & \frac{\partial g}{\partial h_3} \end{bmatrix} \begin{bmatrix} \frac{\partial h_1}{\partial x_1} & \frac{\partial h_1}{\partial x_2} \\ \frac{\partial h_2}{\partial x_1} & \frac{\partial h_2}{\partial x_2} \\ \frac{\partial h_3}{\partial x_1} & \frac{\partial h_3}{\partial x_2} \end{bmatrix}
$$

When $(x_1, x_2) = (2, 1)$,
$$
J_h = \begin{bmatrix} x_2 & x_1 \\ 1 & 1 \\ 1 & -1 \end{bmatrix} = \begin{bmatrix} 1 & 2 \\ 1 & 1 \\ 1 & -1 \end{bmatrix}
$$

Because $\nabla g(2, 3, 1) = (1, 2, 2)$, and $h(2, 1) = (2, 3, 1)$.

Therefore, $J_g = \begin{bmatrix} 1 & 2 & 2 \end{bmatrix}$

$$
J_f = \begin{bmatrix} 1 & 2 & 2 \end{bmatrix} \begin{bmatrix} 1 & 2 \\ 1 & 1 \\ 1 & -1 \end{bmatrix} = \begin{bmatrix} 5 & 2 \end{bmatrix}
$$
**Solution 2**

Let $u=xy$, $v=x+y$, $w=x-y$, by chain rule

$\nabla f(2,1) = \left( \frac{\partial f}{\partial x}(2,1), \frac{\partial f}{\partial y}(2,1) \right)$

$= \left( \frac{\partial f}{\partial u}(2,3,1)\frac{\partial u}{\partial x}(2,1) + \frac{\partial f}{\partial v}(2,3,1)\frac{\partial v}{\partial x}(2,1) + \frac{\partial f}{\partial w}(2,3,1)\frac{\partial w}{\partial y}(2,1), \right.$
$\left. \frac{\partial f}{\partial u}(2,3,1)\frac{\partial u}{\partial y}(2,1) + \frac{\partial f}{\partial v}(2,3,1)\frac{\partial v}{\partial y}(2,1) + \frac{\partial f}{\partial w}(2,3,1)\frac{\partial w}{\partial y}(2,1) \right)$

$= (1 \cdot 1 + 2 \cdot 1 + 2 \cdot 1, \quad 1 \cdot 2 + 2 \cdot 1 + 2 \cdot (-1)) = (5, 2)$

### Local Max/Min

If $f$ has a local max/min at $(a,b)$, then $\nabla f(a,b) = 0$

Critical Points: where $\nabla f = 0$

**The Hessian Matrix**

The Hessian matrix of $f$ is
$$
H_f = 
\begin{bmatrix}
 \frac{\partial^2 f}{\partial x^2} & \frac{\partial^2 f}{\partial x \partial y} \\
 \frac{\partial^2 f}{\partial y \partial x} & \frac{\partial^2 f}{\partial y^2}
\end{bmatrix}
$$

**2nd Derivative Test**

Suppose $(a,b)$ is a critical point, i.e., $\nabla f(a,b) = 0$.

Let $D(a,b) = \det(H_f(a,b)) = f_{xx}(a,b)f_{yy}(a,b) - f_{xy}^2(a,b)$.

1.  If $D > 0$ and $f_{xx}(a,b) > 0$ or $f_{yy}(a,b) > 0$, then $(a,b)$ is a local minimum.
2.  If $D > 0$ and $f_{xx}(a,b) < 0$ or $f_{yy}(a,b) < 0$, then $(a,b)$ is a local maximum.
3.  If $D < 0$, then $(a,b)$ is a saddle point.
4.  If $D = 0$, the test is inconclusive.

#### Exercise 7

Find and classify the critical points for $$f(x, y) = e^y(y^2 - x^2)$$
Show your work. 

**Solution**
$$ \nabla f(x,y) = (-2xe^y, e^y(y^2-x^2+2y)) = 0 $$

Solve the system, we get $(x,y) = (0,0), (0,-2)$

The 2nd derivatives are given by
$$ f_{xx}(x,y) = -2e^y $$
$$ f_{xy}(x,y) = f_{yx}(x,y) = -2xe^y $$
$$ f_{yy}(x,y) = e^y(y^2-x^2+4y+2) $$

So $D(x,y) = -2e^{y}(e^y(y^2-x^2+4y+2)) - 4x^2e^{2y}$

* at $(x,y) = (0,0)$, $D(0,0) < 0$, so $(0,0)$ is a saddle
* at $(x,y) = (0,-2)$, $D(0,-2) = 4e^{-4} > 0$, and $f_{xx}(0,-2) = -2e^{-2} < 0$, so $(0,-2)$ is a local max.

### Global Max/Min

**Setup:**  $f: D \subseteq \mathbb{R}^2 \to \mathbb{R}$ ,$f$ is continuous ,$D$ is compact (i.e., closed and bounded)  $\Rightarrow f$ admits a global maximum and a global minimum. 

**Candidate Points** 

The necessary conditions state that a maximum or minimum can only happen at the following **candidate points**: 

1.  $\nabla f = 0$. 
2.  $\nabla f$ does not exist (DNE). 
3.   Boundary points of the domain $D$.

**Procedure to Find Global Extrema** 

1. Evaluate $f$ at the **corner points** of the boundary. 
2. Find the maximum/minimum of $f$ on the **line boundaries**. 
3. Find the maximum/minimum in the **interior** by locating critical points where $\nabla f(x,y) = 0$.

#### Exercise 8

Determine the global minimum and maximum values of the function $$f(x, y) = x^2 + 2y^2 - xy - x - 3y$$ over the region $D = \{(x, y) | 0 \le x \le 5, 0 \le y \le 3\}$.

**Solution**

At corners
* $f(0,0) = 0$
* $f(0,3) = 9$
* $f(5,0) = 20 \quad \leftarrow \text{global max}$
* $f(5,3) = 14$

On boundaries
* **bottom:** $x=t, y=0$, let $g(t) = f(t,0) = t^2 - t$
    $g'(t) = 2t-1=0 \implies t = \frac{1}{2}$, $g(\frac{1}{2}) = -\frac{1}{4}$
    $\implies f(\frac{1}{2}, 0) = -\frac{1}{4}$

* **left:** $x=0, y=t$, let $g(t) = f(0,t) = 2t^2 - 3t$
    $g'(t) = 4t-3=0 \implies t = \frac{3}{4}$, $g(\frac{3}{4}) = -\frac{9}{8}$
    $\implies f(0, \frac{3}{4}) = -\frac{9}{8}$

* **top:** $x=t, y=3$, let $g(t) = f(t,3) = t^2 - 4t + 9$
    $g'(t) = 2t-4=0 \implies t=2$, $g(2)=5$
    $\implies f(2,3)=5$

* **right:** $x=5, y=t$, let $g(t) = f(5,t) = 2t^2 - 8t + 20$
    $g'(t) = 4t-8=0 \implies t=2$, $g(2)=12$
    $\implies f(5,2)=12$

**Interior**
$\nabla f(x,y) = (2x-y-1, 4y-x-3) = 0$
$\implies x=y=1$, and
$f(1,1) = -2 \quad \leftarrow \text{global min}$















