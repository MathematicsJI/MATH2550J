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















## Basic Multivariable Integral

#### Skills Required For this part

- Remember the integral formula! **That's the most important thing! **
- You have to master basic integral methods, like **integral by parts** or **triangular substitution**. But you won't meet the difficult integral we have met in VV156.
- If you cannot find the integral result directly, try **changing the order of the integral**. (eg $\iint f(x,y) dydx$ $\rightarrow$ $\iint f(x,y)dxdy$)
- Using **Polar Coordinates**, **Cylindrical Coordinates** and **Spherical Coornidates** for some special case.

#### Exercise 2

(i) $\int_{0}^{8} \int_{x^{\frac{1}{3}}}^{2} \frac{dy \, dx}{1+y^4}$













(ii) $\int_{0}^{1} \int_{0}^{x} \arctan\left(\frac{y}{x}\right) dy \, dx$















#### Exercise 3

Let $R = \{(x, y) | y \le x^2, 0 \le x \le 2 - y^2\}$. Rewrite $\iint_R f(x,y) dA$ explicitly in terms of appropriate bounds.

 (i) when $dA = dx \, dy$.

(ii) when $dA = dy \, dx$.













## Change of Coordinates

#### What you have to master before the exam

- [ ] Cylindrical Coordinates and Spherical Coordinates
- [ ] How to use Jacobian Matrix to do Change of Coordinates

#### Exercise 4

(i) Convert the following integral from Cartesian coordinates to cylindrical coordinates. 

$$\int_{0}^{3} \int_{-\sqrt{9-x^2}}^{\sqrt{9-x^2}} \int_{0}^{18-2x^2-2y^2} yz \, dz \, dy \, dx $$















(ii) Convert the following integral from spherical coordinates to Cartesian coordinates. 

$$\int_{0}^{\pi/2} \int_{0}^{\pi/4} \int_{0}^{2\sqrt{2}} \sin\phi \, d\rho \, d\phi \, d\theta$$















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





































## Surface Integral

- Scalar: $\iint_S f(x, y, z) \, dS = \iint_D f(\mathbf{r}(u, v)) |\mathbf{r}_u \times \mathbf{r}_v| \, dA$  (Finding a mass of a surface...)
- Vector: $\iint_S \mathbf{F} \cdot d\mathbf{S} = \iint_S (\mathbf{F} \cdot \hat{\mathbf{n}}) \, dS = \iint_D \mathbf{F} \cdot \frac{\mathbf{r}_u \times \mathbf{r}_v}{\Vert \mathbf{r}_u \times \mathbf{r}_v \Vert} \Vert \mathbf{r}_u \times \mathbf{r}_v \Vert \, dA = \iint_D \mathbf{F} \cdot (\mathbf{r}_u \times \mathbf{r}_v) \, dA$ (Finding the flux)

#### Exercise 6

Evaluate the surface integral $$\iint_S \sqrt{4 - x^2 - y^2} \, d\sigma$$ where the surface $S \subset \mathbb{R}^3$ is given by the graph of $z = \sqrt{4 - x^2 - y^2}$ (wherever it is defined.)



































## Stokes Theorem and Divergence Theorem

- Stokes Theorem: $\int_C \bar{F} \cdot d\bar{r} = \iint_S \text{curl}(\bar{F}) \cdot d\bar{S}.$
- Divergence Theorem: $\iint_S \bar{F} \cdot d\bar{S} = \iiint_R \text{div}(\bar{F}) \, dV.$

---

After solving the problems listed above, Kumiko has confidence that she can successfully solve the difficult calculus problem which may appear in Prof.Cai's course. However, she met a new task which is far more horrible. In the PHYS1500J Course, Prof.Saulo Mendes introduced curl, divergence, stokes theorem and divergence theorem in the first lecture, but she hasn't learned how to find the derivative of multivariable calculus problem at that time. So she gave up and has never gone to the physics lecture until now. As the final exam is approaching and Runze has taught how to calculate such things, Kumiko plans to learn physics now. Hope you can help her with these problems related to these theorems and help her survive the horrible physics course!

---

#### Exercise 7

Calculate the flux $\iint_S \mathbf{F} \cdot d\mathbf{S}$ of the vector field $\mathbf{F}(x, y, z) = -x\mathbf{i} - y\mathbf{j} + z^3\mathbf{k}$ where S is part of the cone $z = \sqrt{x^2 + y^2}$ between the planes $z = 1$ and $z = 3$ with normal vector pointing downward.



























#### Exercise 8

Let $S \subset \mathbb{R}^3$ be the surface obtained by rotating the line $\ell$ around the z-axis, where $\ell$ is given by $(x, y, z) = (1, t, t), t \in \mathbb{R}$. 

(i)Let $E$ be the solid bounded by the surface $S$ and the surface $z=0$ and $z=3$. Set up an appropriate integral (in whichever coordinates that you see fit, with necessary explanation) for the volume of $E$, and then evaluate the integral.



































(ii)Let $G$ be part of the surface $S$ bounded between the planes $z = -1$ and $z = 2$, with normal vector pointing away from the z-axis. Evaluate the line integral $$\oint_{\partial G} yz \, dx + (3x + z^2 - y^3) \, dy + (\cos x^2 + \sin y^2) \, dz$$

























## Extra Problems

After reviewing all the content of MATH2550J, Kumiko decided to help her friend Reina with this course. Aftering reading Stewart Calculus carefully, she founded two interesting problems and gave Reina to help her prepare for the exam. 

#### Exercise 9

Evaluate $$\int_C (y + \sin x) \, dx + (z^2 + \cos y) \, dy + x^3 \, dz$$ where C is the curve $r(t) = (\cos t, \sin t, \sin 2t), 0 \le t \le 2\pi$.



















#### Exercise 10

Use the Divergence Theorem to evaluate$\iint_S (2x + 2y + z^2) \, dS$, where S is the sphere $x^2 + y^2 + z^2 = 1$.























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
