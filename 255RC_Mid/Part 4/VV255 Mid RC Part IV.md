# VV255 Mid RC Part IV

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















### Exercise 2  Matrix Basic

$A = \begin{bmatrix} 1 & 2 & 4 & 1 \\ 0 & 3 & 9 & 6 \\ 0 & 0 & 0 & 2 \\ 1 & 2 & 4 & 2 \end{bmatrix}$ 

(i) Find a basis for $\text{im}(A)$. Explain.

(ii) Find a basis for ker(A). Explain.

(iii) Find dim ker(A). Explain.

(iv) Find rank(A). Explain.

(v) Find det(A). Explain.







































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







































### Chain Rule

$df = \frac{\partial f}{\partial x} dx + \frac{\partial f}{\partial y} dy$

In order to avoid forgetting using chain rule, in exercises, you can write $z$ as $z(x,y)$

#### Exercise 5

Let the function $z = z(x,y)$ be implicitly defined as $z + \sin z = xy$, express the mixed partial derivative $\frac{\partial^2 z}{\partial x \partial y}$ in terms of $z$ only, i.e., find the function $f$ such that $\frac{\partial^2 z}{\partial x \partial y} = f(z)$. (ignore the domain issue and focus on wherever the function is defined)













































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

















