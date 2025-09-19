# VV255 Final RC Part IV

TA: Chengyang Shi

Email: scy_forever@sjtu.edu.cn

In this part of our RC, we will discuss some skills in solving exercises to help you better prepare for the exam.

This RC might not cover all of the content that might be tested in the exam, so you still need to review the slides and homework carefully. It's just a quick review of some frequently tested problems.

---

One day, a typical Japanese high school girl named Kumiko woke up to find herself transported to SJTU Global College. She opened her email and discovered that she had received invitations to register for two courses, MATH2550J and PHYS1500J. She also received a mysterious email telling her that she could only return to her original world after passing these two courses. 

As a student at SJTU Global College, you want to help Kumiko study these two courses so that she can pass the mysterious email test. However, since you are not good at physics and have never attended Prof.Saulo Mendes's lecture, you decide to tutor her in mathematics instead. You carefully design exercises to help her learn 255.

---

## Lagrange Multiplier

For this part, you just need to **follow the method** we have provided in the regular RC, and calculate the result.

**Note: You need also consider the boundary points even if using Lagrange Multiplier. **(Check the example Prof has mentioned in the lecture!)

#### Exercise 1

---

Find the global maximum and minimum value of the function $f(x,y) = xy$ over the closed and bounded region $D = \{(x,y) | 16x^4 - 32xy + y^4 \leq 256\}$. 

---

On interior of D:

Let $\nabla f(x,y) = (y,x) = 0 \Rightarrow (x,y)=0$
So $f(0,0)=0$

On $\partial D$:

we optimize $f(x,y) = xy$ , s.t. $g(x,y) = 16x^4 - 32xy + y^4 = 256$

Apply Lagrange multiplier method, let $\nabla f(x,y) = \lambda \nabla g(x,y)$, i.e., $y = \lambda(64x^3-32y)$ & $x = \lambda(-32x+4y^3)$

eliminate $\lambda$, we get $y^4=16x^4$, so $y=\pm 2x$

* when $y=2x$, plug in $g(x,y)$, we get $(x^2+2)(x^2-4)=0$
    so $x=\pm 2$, so $(x,y)=(2,4)$ or $(-2,-4)$
    and $f(\pm 2, \pm 4) = 8$ <-- both global max

* when $y=-2x$, plug in $g(x,y)$, we get $(x^2+4)(x^2-2)=0$
    so $x=\pm\sqrt{2}$, so $(x,y)=(\sqrt{2}, -2\sqrt{2})$ or $(-\sqrt{2}, 2\sqrt{2})$
    and $f(\pm \sqrt{2}, \mp 2\sqrt{2}) = -4$ <-- both global min

## Basic Multivariable Integral

#### Skills Required For this part

- Remember the integral formula! **That's the most important thing! **
- You have to master basic integral methods, like **integral by parts** or **triangular substitution**. But you won't meet the difficult integral we have met in VV156.
- If you cannot find the integral result directly, try **changing the order of the integral**. (eg $\iint f(x,y) dydx$ $\rightarrow$ $\iint f(x,y)dxdy$)
- Using Polar Coordinates, and Spherical Coornidates for some special case.

#### Exercise 2

(i) $\int_{0}^{8} \int_{x^{\frac{1}{3}}}^{2} \frac{dy \, dx}{1+y^4}$

Method I: Interchange the order of $dx$ & $dy$ 

$$ \int_0^8 \int_{x^{1/3}}^2 \frac{dy \, dx}{1+y^4} = \int_0^2 \int_0^{y^3} \frac{dx \, dy}{1+y^4} $$ $$ = \int_0^2 \frac{x}{1+y^4} \bigg|_{x=0}^{x=y^3} \, dy = \int_0^2 \frac{y^3}{1+y^4} \, dy $$ $$ = \frac{1}{4} \log(1+y^4) \bigg|_{y=0}^{y=2} = \frac{1}{4} \log(17) $$ 













---

Method II: integrate directly 

$$ \int_0^8 \int_{x^{1/3}}^2 \frac{dy \, dx}{1+y^4} $$ $$ = \int_0^8 \frac{1}{4\sqrt{2}} \left[ 2\arctan(1+\sqrt{2}y) - 2\arctan(1-\sqrt{2}y) + \log(1+\sqrt{2}y+y^2) - \log(1-\sqrt{2}y+y^2) \right]_{y=x^{1/3}}^{y=2} \, dx $$  

$$ \begin{aligned} = \int_0^8 \frac{1}{4\sqrt{2}} \bigg[ & 2\arctan(1+2\sqrt{2}) - 2\arctan(1-2\sqrt{2}) + \log(5+2\sqrt{2}) - \log(5-2\sqrt{2}) \\ & -2\arctan(1+\sqrt{2}x^{1/3}) + 2\arctan(1-\sqrt{2}x^{1/3}) \\ & - \log(1+\sqrt{2}x^{1/3}+x^{2/3}) + \log(1-\sqrt{2}x^{1/3}+x^{2/3}) \bigg] \, dx \end{aligned} $$ $$ \begin{aligned} = \frac{1}{4\sqrt{2}} \Bigg[ & \left( 2\arctan(1+2\sqrt{2}) - 2\arctan(1-2\sqrt{2}) + \log(5+2\sqrt{2}) - \log(5-2\sqrt{2}) \right) x \\ & + 2x\arctan(1-\sqrt{2}x^{1/3}) - 2x\arctan(1+\sqrt{2}x^{1/3}) \\ & + x\log(1-\sqrt{2}x^{1/3}+x^{2/3}) - x\log(1+\sqrt{2}x^{1/3}+x^{2/3}) \Bigg]_{x=0}^{x=8} \end{aligned} $$

$$ = \frac{1}{4} [\log(5-2\sqrt{2}) + \log(5+2\sqrt{2})] = \frac{1}{4}\log(17) $$

---

(ii) $\int_{0}^{1} \int_{0}^{x} \arctan\left(\frac{y}{x}\right) dy \, dx$

Method I: Integrate directly 

$$ \int_0^1 \int_0^x \arctan\left(\frac{y}{x}\right) \, dy \, dx $$ $$ = \int_0^1 \left[ y\arctan\left(\frac{y}{x}\right) - \frac{1}{2}x\log(x^2+y^2) \right]_{y=0}^{y=x} \, dx $$ $$ = \int_0^1 x \left( \frac{\pi}{4} - \frac{1}{2}\log 2 \right) dx $$ $$ = \frac{\pi}{8} - \frac{1}{4}\log 2 $$ 

---

Method II: switch to polar coordinates, we get

 $$ \int_0^1 \int_0^x \arctan\left(\frac{y}{x}\right) \, dy \, dx = \int_0^{\pi/4} \int_0^{\sec\theta} \theta \, r \, dr \, d\theta $$ $$ = \int_0^{\pi/4} \theta \left. \frac{1}{2}r^2 \right|_{r=0}^{r=\sec\theta} \, d\theta = \frac{1}{2} \int_0^{\pi/4} \theta \sec^2\theta \, d\theta $$ $$ = \frac{1}{2} \left[ \theta\tan\theta - \frac{1}{2}\log(\sec\theta) \right]_{\theta=0}^{\theta=\pi/4} = \frac{\pi}{8} - \frac{1}{4}\log(2) $$













#### Exercise 3

Let $R = \{(x, y) | y \le x^2, 0 \le x \le 2 - y^2\}$. Rewrite $\iint_R f(x,y) dA$ explicitly in terms of appropriate bounds.

 (i) when $dA = dx \, dy$.

(ii) when $dA = dy \, dx$.

---

$$ \text{(i)} \left( \int_{-\sqrt{2}}^0 \int_0^{2-y^2} + \int_0^1 \int_{\sqrt{y}}^{2-y^2} \right) f(x,y) \, dx \, dy $$ 

$ \text{(ii)} \left( \int_0^1 \int_{-\sqrt{2-x}}^{x^2} + \int_1^2 \int_{-\sqrt{2-x}}^{\sqrt{2-x}} \right) f(x,y) \, dy \, dx $

## Change of Coordinates

#### What you have to master before the exam

- [ ] Cylindrical Coordinates and Spherical Coordinates
- [ ] How to use Jacobian Matrix to do Change of Coordinates

#### Exercise 4

(i) Convert the following integral from Cartesian coordinates to cylindrical coordinates. 

$$\int_{0}^{3} \int_{-\sqrt{9-x^2}}^{\sqrt{9-x^2}} \int_{0}^{18-2x^2-2y^2} yz \, dz \, dy \, dx $$

---

(i) $$ \int_{-\pi/2}^{\pi/2} \int_0^3 \int_0^{18-2r^2} r^2 z \sin\theta \, dz \, dr \, d\theta $$







(ii) Convert the following integral from spherical coordinates to Cartesian coordinates. 

$$\int_{0}^{\pi/2} \int_{0}^{\pi/4} \int_{0}^{2\sqrt{2}} \sin\phi \, d\rho \, d\phi \, d\theta$$

---

(ii) $$ \int_0^2 \int_0^{\sqrt{4-x^2}} \int_{\sqrt{x^2+y^2}}^{\sqrt{8-x^2-y^2}} \frac{1}{x^2+y^2+z^2} \, dz \, dy \, dx $$







## Line Integral ane Green's Theorem

#### Line Integral

- Scalar: $\int_C f(x, y) \, ds = \int_a^b f[x(t), y(t)] \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2} \, dt$    (Finding length/mass of a rope)
- Vector: $$\int_C \mathbf{F} \cdot d\mathbf{r} = \int_a^b \mathbf{F}[\mathbf{r}(t)] \cdot \mathbf{r}'(t) \, dt$$  (Finding the work)

#### Green's Theorem

$$\int_C P \, dx + Q \, dy = \iint_D \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) dA$$

---

#### Exercise 5

Let $C_1$ be the circle centered at the origin of radius 1 oriented counter-clockwise, $C_2$ the circle centered at the origin of radius 2 oriented clockwise, evaluate the line integral
$$\oint_{C_1 \cup C_2} (e^{-x^2} + 3x^2y + y^3) \, dx + (x - \ln(\sin^2(y) + 1)) \, dy$$

---

Let A be the annulus between $C_1$ & $C_2$, we have $C_1 \cup C_2 = -\partial A$, by Green's thm $$ \int_{C_1 \cup C_2} (e^{-x^2} + 3x^2y + y^3)dx + (x - \ln(\sin^2(y)+1))dy $$ $$ = - \iint_A (1 - 3x^2 - 3y^2) dx dy $$ $$ = \int_0^{2\pi} \int_1^2 (3r^2 - 1)r \, dr \, d\theta \quad (\text{switch to polar coord.}) $$ $$ = 2\pi \int_1^2 (3r^3 - r) \, dr = 2\pi \left[ \frac{3}{4}r^4 - \frac{r^2}{2} \right]_1^2 $$ $$ = \frac{39\pi}{2} $$









## Surface Integral

- Scalar: $\iint_S f(x, y, z) \, dS = \iint_D f(\mathbf{r}(u, v)) |\mathbf{r}_u \times \mathbf{r}_v| \, dA$  (Finding a mass of a surface...)
- Vector: $\iint_S \mathbf{F} \cdot d\mathbf{S} = \iint_S (\mathbf{F} \cdot \hat{\mathbf{n}}) \, dS = \iint_D \mathbf{F} \cdot \frac{\mathbf{r}_u \times \mathbf{r}_v}{\Vert \mathbf{r}_u \times \mathbf{r}_v \Vert} \Vert \mathbf{r}_u \times \mathbf{r}_v \Vert \, dA = \iint_D \mathbf{F} \cdot (\mathbf{r}_u \times \mathbf{r}_v) \, dA$ (Finding the flux)

#### Exercise 6

Evaluate the surface integral $$\iint_S \sqrt{4 - x^2 - y^2} \, d\sigma$$ where the surface $S \subset \mathbb{R}^3$ is given by the graph of $z = \sqrt{4 - x^2 - y^2}$ (wherever it is defined.)

---

since $\frac{\partial z}{\partial x} = \frac{-x}{\sqrt{4-x^2-y^2}}$ & $\frac{\partial z}{\partial y} = \frac{-y}{\sqrt{4-x^2-y^2}}$ and the domain of integration is $D = \{(x,y) | x^2+y^2 \le 4\}$ 

so $$ \iint_S \sqrt{4-x^2-y^2} \, d\sigma $$ $$ = \iint_D \sqrt{4-x^2-y^2} \sqrt{1 + \left(\frac{\partial z}{\partial x}\right)^2 + \left(\frac{\partial z}{\partial y}\right)^2} \, dx \, dy $$ $$ = \iint_D \sqrt{4-x^2-y^2} \frac{2}{\sqrt{4-x^2-y^2}} \, dx \, dy $$ $$ = \iint_D 2 \, dx \, dy = 2 \cdot \text{Area}(D) = 2 \cdot \pi \cdot 2^2 = 8\pi $$













## Stokes Theorem and Divergence Theorem

- Stokes Theorem: $\int_C \bar{F} \cdot d\bar{r} = \iint_S \text{curl}(\bar{F}) \cdot d\bar{S}.$
- Divergence Theorem: $\iint_S \bar{F} \cdot d\bar{S} = \iiint_R \text{div}(\bar{F}) \, dV.$

---

After solving the problems listed above, Kumiko has confidence that she can successfully solve the difficult calculus problem which may appear in Prof.Cai's course. However, she met a new task which is far more horrible. In the PHYS1500J Course, Prof.Saulo Mendes introduced curl, divergence, stokes theorem and divergence theorem in the first lecture, but she hasn't learned how to find the derivative of multivariable calculus problem at that time. So she gave up and has never gone to the physics lecture until now. As the final exam is approaching and Runze has taught how to calculate such things, Kumiko plans to learn physics now. Hope you can help her with these problems related to these theorems and help her survive the horrible physics course!

---

#### Exercise 7

Calculate the flux $\iint_S \mathbf{F} \cdot d\mathbf{S}$ of the vector field $\mathbf{F}(x, y, z) = -x\mathbf{i} - y\mathbf{j} + z^3\mathbf{k}$ where S is part of the cone $z = \sqrt{x^2 + y^2}$ between the planes $z = 1$ and $z = 3$ with normal vector pointing downward.

---

Method I:

parametrise S as $$ \begin{aligned} x(r,\theta) &= r\cos\theta \\ y(r,\theta) &= r\sin\theta \\ z(r,\theta) &= r \end{aligned} \qquad \text{w/} \quad 1 \le r \le 3, \quad 0 \le \theta \le 2\pi $$ 

Let $\vec{r}(r,\theta) = (x(r,\theta), y(r,\theta), z(r,\theta))$, we have

 $$ \frac{\partial \vec{r}}{\partial r} = (\cos\theta, \sin\theta, 1) \quad \frac{\partial \vec{r}}{\partial \theta} = (-r\sin\theta, r\cos\theta, 0) $$ 

Since the surface normal is pointing downward, the unit normal is chosen as $$ \hat{n} = \frac{\partial \vec{r}}{\partial \theta} \times \frac{\partial \vec{r}}{\partial r} = (r\cos\theta, r\sin\theta, -r) $$

 Hence $$ \iint_S \vec{F} \cdot d\vec{S} = \int_0^{2\pi} \int_1^3 \begin{pmatrix} -r\cos\theta \\ -r\sin\theta \\ r^3 \end{pmatrix} \cdot \begin{pmatrix} r\cos\theta \\ r\sin\theta \\ -r \end{pmatrix} dr \, d\theta $$ $$ = \int_0^{2\pi} \int_1^3 (r^2 - r^4) dr \, d\theta $$ $$ = - \frac{1712\pi}{15} $$

---

Method II: 

Apply divergence theorem, let E be the solid enclosed by the cone and the plane $z=1$ & $z=3$,
So $\partial E = S \cup S_{top} \cup S_{bot}$ where
$S_{top}$ is the top surface w/ $z=3$, unit normal $\hat{k}$
$S_{bot}$ is the bottom surface w/ $z=1$, unit normal $-\hat{k}$
Note $\iiint_E \text{div} \vec{F} \, dV = \left( \iint_S + \iint_{S_{top}} + \iint_{S_{bot}} \right) \vec{F} \cdot d\vec{S}$
$$
\iiint_E \text{div} \vec{F} \, dV = \iiint_E -2+3z^2 \, dx dy dz
$$
$$
= 2\pi \int_1^3 (-2+z^2) \frac{z^2}{2} \, dz = \frac{466\pi}{15} \quad (\text{cylindrical coord.})
$$
$$
\iint_{S_{top}} \vec{F} \cdot d\vec{S} = \iint_{x^2+y^2 \le 3^2} \begin{pmatrix} -x \\ -y \\ 3^3 \end{pmatrix} \cdot \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} \, dx dy = 3^3 \cdot 9\pi
$$

$$
\iint_{S_{bot}} \vec{F} \cdot d\vec{S} = \iint_{x^2+y^2 \le 1^2} \begin{pmatrix} -x \\ -y \\ 1^3 \end{pmatrix} \cdot \begin{pmatrix} 0 \\ 0 \\ -1 \end{pmatrix} \, dx dy = -\pi
$$
Hence
$$
\iint_S \vec{F} \cdot d\vec{S} = \frac{1918\pi}{15} - 3^5\pi - (-\pi) = - \frac{1712\pi}{15}
$$
对于这里的法向量确定，我们可以通过**normal vector pointing downward**,结合图像，判断出法向量为指向锥体外，因此，对应的上表面与下表面的法向量也为指向锥体外

与第八题一样，我们通过三者的和为一个定值来计算锥体的面积分，注意到这里是直接把面积分转化为体积分，所以直接把F变成divF，我们得到的体积分的值也不是0，因此，在这里我们通过用原有法向量的值来计算对应的面积分，再通过相减的方式得到答案







#### Exercise 8

Let $S \subset \mathbb{R}^3$ be the surface obtained by rotating the line $\ell$ around the z-axis, where $\ell$ is given by $(x, y, z) = (1, t, t), t \in \mathbb{R}$. 

(i)Let $E$ be the solid bounded by the surface $S$ and the surface $z=0$ and $z=3$. Set up an appropriate integral (in whichever coordinates that you see fit, with necessary explanation) for the volume of $E$, and then evaluate the integral.

---

S is parametrized by $$ \begin{aligned} x &= \cos\theta - t\sin\theta \\ y &= \sin\theta + t\cos\theta \quad (\text{or } \theta \leftrightarrow -\theta) \\ z &= t \end{aligned} $$ 

eliminating $t$ & $\theta$, we have $x^2+y^2-z^2=1$ for S 

so a parametrization for E in cylindrical coordinates is $$ \begin{aligned} x &= r\cos\theta \\ y &= r\sin\theta \\ z &= z \end{aligned} $$ where $0 \le r \le \sqrt{1+z^2}$, $0 \le z \le 3$, $0 \le \theta \le 2\pi$ 

so the volume of E is given by $$ V(E) = \int_0^{2\pi} \int_0^3 \int_0^{\sqrt{1+z^2}} r \, dr \, dz \, d\theta $$ $$ = \int_0^{2\pi} \int_0^3 \frac{1}{2}(1+z^2) \, dz \, d\theta = \pi \int_0^3 (1+z^2) \, dz = 12\pi $$ 

(could also use order $dzdrd\theta$ etc) 

---

or observe that S is the plane curve $x=\sqrt{1+z^2}$ (or $x=-\sqrt{1+z^2}$) rotated around the z-axis, so by washer/disk method in single var. calculus  $$ V(E) = \int_0^3 \pi(\sqrt{1+z^2})^2 dz = 12\pi $$ (cylindrical shell could also work)

---

Or parametrize the solid E as $$ \begin{aligned} x &= r(\cos\theta - t\sin\theta) \\ y &= r(\sin\theta + t\cos\theta) \\ z &= t \end{aligned} \qquad 0 \le r \le 1, 0 \le t \le 3, 0 \le \theta \le 2\pi $$ 

and $$ \left| \det \frac{\partial(x,y,z)}{\partial(r,t,\theta)} \right| = r(1+t^2) $$ 

Hence $$ V(E) = \int_0^{2\pi} \int_0^3 \int_0^1 r(1+t^2) \, dr \, dt \, d\theta $$ $$ = \int_0^{2\pi} d\theta \cdot \int_0^1 r \, dr \cdot \int_0^3 (1+t^2) \, dt = 12\pi $$













(ii)Let $G$ be part of the surface $S$ bounded between the planes $z = -1$ and $z = 2$, with normal vector pointing away from the z-axis. Evaluate the line integral $$\oint_{\partial G} yz \, dx + (3x + z^2 - y^3) \, dy + (\cos x^2 + \sin y^2) \, dz$$

---

By Stokes' theorem, $$ \oint_{\partial G} \vec{F} \cdot d\vec{r} = \iint_G \nabla \times \vec{F} \cdot d\vec{S} = \left( \iint_{S_{top}} + \iint_{S_{bot}} \right) \nabla \times \vec{F} \cdot d\vec{S} $$ 

where $S_{top}$ is part of the plane $z=2$ inside S, i.e., $x^2+y^2 \le 5$, w/ unit normal $-\hat{k}$ 

and $S_{bot}$ is part of the plane $z=-1$ inside S, i.e., $x^2+y^2 \le 2$, w/ unit normal $\hat{k}$ $$ \nabla \times \vec{F} = \det \begin{pmatrix} \hat{i} & \hat{j} & \hat{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ yz & 3x+z^2-y^3 & \cos x^2 + \sin y^2 \end{pmatrix} $$ $$ = (*)\hat{i} + (*)\hat{j} + (3-z)\hat{k} $$ 

$$ \iint_{S_{top}} \nabla \times \vec{F} \cdot d\vec{S} = \iint_{x^2+y^2 \le 5} \begin{pmatrix} * \\ * \\ 3-2 \end{pmatrix} \cdot \begin{pmatrix} 0 \\ 0 \\ -1 \end{pmatrix} \, dx dy = -5\pi $$ $$ \iint_{S_{bot}} \nabla \times \vec{F} \cdot d\vec{S} = \iint_{x^2+y^2 \le 2} \begin{pmatrix} * \\ * \\ 3-(-1) \end{pmatrix} \cdot \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} \, dx dy = 8\pi $$ 

So finally $$ \oint_{\partial G} \vec{F} \cdot d\vec{r} = -5\pi + 8\pi = 3\pi $$



关于这道题的法向量确定

首先，根据题意中的"away from z axis"，我们可以确定，对于这个锥体，法向量为**指向锥体外**

因此，通过divergence thm，我们可以得到（**注意**：因为这是一个**封闭的图形**，我们考虑了**上下底面**，所以最后这个东西的值才为0）

$$ \oiint_{G \cup S_{top} \cup S_{bot}} (\nabla \times \vec{F}) \cdot d\vec{S}_{out} = \iiint_V \nabla \cdot (\nabla \times \vec{F}) dV = 0 $$

也就是

$$ \iint_{G} (\nabla \times \vec{F}) \cdot \vec{n}_{G, out} dS + \iint_{S_{top}} (\nabla \times \vec{F}) \cdot \vec{n}_{top, out} dS + \iint_{S_{bot}} (\nabla \times \vec{F}) \cdot \vec{n}_{bot, out} dS = 0 $$

在上面这个式子中，根据法向量向外的规则，上面的圆盘法向量应当为(0,0,1)，下面的则是为(0,0,-1)

我们要求的是，对于这个**锥体面**，他的**边界的线积分**，通过stokes thm，我们将其转化为这个**锥体面的面积分**

但是，这个锥体面的面积分不太好算，通过前面得到总的积分为0的式子，我们将这个锥体的面积分转化为**负的底面与顶面的面积分**

因此，我们将顶面的法向量记为(0,0,-1),(0,0,1)，来表示负的结果，我们最后才得到了答案的这个式子





## Extra Problems

After reviewing all the content of MATH2550J, Kumiko decided to help her friend Reina with this course. Aftering reading Stewart Calculus carefully, she founded two interesting problems and gave Reina to help her prepare for the exam. 

#### Exercise 9

Evaluate $$\int_C (y + \sin x) \, dx + (z^2 + \cos y) \, dy + x^3 \, dz$$ where C is the curve $r(t) = (\cos t, \sin t, \sin 2t), 0 \le t \le 2\pi$.

---

![image-20250801024848698](/Users/chengyangshi/Library/Application Support/typora-user-images/image-20250801024848698.png)









#### Exercise 10

Use the Divergence Theorem to evaluate$\iint_S (2x + 2y + z^2) \, dS$, where S is the sphere $x^2 + y^2 + z^2 = 1$.

---

![image-20250801025000399](/Users/chengyangshi/Library/Application Support/typora-user-images/image-20250801025000399.png)











## Congratulations on finishing all of the Calculus Course and Freshman Semester In JI!

Finally, Kumiko and Reina successfully survied MATH2550J and PHYS1500J and they both got two A for these two courses. They all think the special semester in SJTU Global College is exhausting but they can proudly say that they survive it, and also breathed a sigh of relief as they won't take Prof.Saulo Mendes's Physics course again. So, also congratulations on yourself for surviving the first year in SJTU Global College even though you might not enjoy it! Surving this year is already a challenge and you successfully do it!



## Further Courses where you may meet VV255 again（If you choose ECE 

- VV256 Ordinary Differential Equation and Linear Algebra
  - Here, you may meet Green's Theorem again. 
- VE230 Electromagnetics I and all the other courses related to Electromagnetics, Optics, and Photonics
  - Here, you will use all of the knowledge you have learned in VV255!
- VE401 Probabilistic Methods in Engineering
  - Here, you will do change the coordinates again
- VP250 Physics II
  - "Lite Version" for VE230 
