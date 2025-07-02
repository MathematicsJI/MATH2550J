# Some Tips For VV255 Linear Algebra Part

Author: Chengyang Shi

注：这是一份unofficial的文档，如果你觉得里面的内容有帮助可以自取，碍于本人已经忘的差不多了，因此可能会有小错误，如果你发现了欢迎来告诉我。

## Basis for Null Space and Column Space

### Basis For Column Space
A basis for the column space of a matrix A is the columns of A corresponding to columns of rref(A) that contain leading ones.

一个矩阵 **A** 的 **column space** 的一组 **basis** (基)，是 **A** 矩阵中，与 **rref(A)** (A的简化行阶梯形式) 中包含 **leading ones** (首一) 的列相对应的那些列向量。

### Basis For Null Space
The solution to Ax = 0(which can be easily obtained from rref(A) by augmenting
it with a column of zeros) will be an arbitrary linear combination of vectors. Those
vectors form a basis for null(A).


#### Example 1: 

Find bases for the null space and column space of $A = \begin{bmatrix} 1 & 3 & -2 & -4 \\ 3 & 7 & 1 & 4 \\ -2 & 1 & 7 & 7 \end{bmatrix}$.

#### Sol:

The reduced row-echelon form of $A$ is shown below and to the left. We can see that the first through third columns contain leading ones, so a basis for the column space of $A$ is the set shown below and to the right.

$\begin{bmatrix} 1 & 0 & 0 & 3 \\ 0 & 1 & 0 & -1 \\ 0 & 0 & 1 & 2 \end{bmatrix}$      $\left\{ \begin{bmatrix} 1 \\ 3 \\ -2 \end{bmatrix},\begin{bmatrix} 3 \\ 7 \\ 1 \end{bmatrix}, \begin{bmatrix} -2 \\ 1 \\ 7 \end{bmatrix} \right\}$

If we were to augment $A$ with a column of zeros to represent the system $Ax = 0$ and row reduce we’d get the matrix shown above and to the left but with an additional column of zeros on the right. 

$$
\begin{bmatrix}
1 & 0 & 0 & 3 \\
0 & 1 & 0 & -1 \\
0 & 0 & 1 & 2
\end{bmatrix}
\begin{bmatrix}
x_1 \\ x_2 \\ x_3 \\ x_4
\end{bmatrix}
=\begin{bmatrix}0 \\ 0 \\ 0\end{bmatrix}$$

$$
\Rightarrow
\begin{cases}
x_1 + 3x_4 = 0 \\
x_2 - 1x_4 = 0 \\
x_3 + 2x_4 = 0
\end{cases}
$$

Assume $x_4 = t$.

$$
\Rightarrow
\begin{bmatrix}
x_1 \\ x_2 \\ x_3 \\ x_4
\end{bmatrix}
=t\begin{bmatrix}
-3 \\ 1 \\ -2 \\ 1
\end{bmatrix}
$$

We’d then have $x_4$ as a free variable $t$, with $x_1 = -3t$, $x_2 = 1t$ and $x_3 = -2t$. The solution to $Ax = 0$ is any scalar multiple of $\begin{bmatrix} -3 \\ 1 \\ -2 \\ 1 \end{bmatrix}$, so that vector is a basis for the null space of $A$. 

#### Example 2

Find a basis for the null space and column space of $A = \begin{bmatrix} 1 & 3 & -2 \\ 3 & 7 & 1 \\ -2 & 1 & 7 \end{bmatrix}$.

The reduced row-echelon form of this matrix is the identity, so a basis for the column space consists of all the columns of $A$. If we augment $A$ with the zero vector and row reduce we get a solution of the zero vector, so the null space is just the zero vector (which is of course a basis for itself).

说人话就是我们化得的rref是单位矩阵，所以A的每一列构成了image的一个basis，同时解方程解出来kernel是0，那{0,0,0}就是我们需要的那个kernel的basis。

同时，对于找basis，个人认为有一个更巧妙的办法，按照上述流程化出的rref，有几个leading one就说明了这个矩阵的dim是多少，知道了dim是多少以后

假如这里的**dim恰好等于原矩阵的行数**（即$Rank(A) = m$）

我们可以直接用标准正交基（也就是{100},{010},{001}）来表示这个image的basis，就如同example 1所示。毕竟，我们只要得到能够span出我们需要的space的basis就行了，同时，这样子的basis还是正交的，假如题目要我们找orthonormal的basis，我们甚至直接交这个上去就行了，答案完全是正确的。

对于dim不等于行数的情况，我们需要通过QR decomposition来找对应的orthonormal basis。

举个例子来说，假如对于一个 $4 \times 3$的矩阵$A$来说，对于**原始矩阵 :**
$$
A = \begin{pmatrix}
1 & 1 & 0 \\
1 & 0 & 1 \\
0 & 1 & 1 \\
1 & 1 & 1
\end{pmatrix}
$$

**A 的RREF 是:**
$$
\text{rref}(A) = \begin{pmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1 \\
0 & 0 & 0
\end{pmatrix}
$$

我们可以观察到A的行数是4，但是A的rank，也就是rref的leading one的数量3，并不等于行数，因此我们无法直接用标准正交基来表示他的column space的basis，需要通过对A进行QR Decomposition来得到我们想要的结果

同时注意，让你找kernel，image，你需要表示为 {$\alpha v_1+ \beta v_2 + \gamma v_3 ...$}的 形式，但是假如让你找basis，你只需要把 {$v_1,v_2,v_3$} 交上去就可以了，假如出现了这里一定要注意写对

比如我们来看example1里的例子
$$
A = \begin{bmatrix} 1 & 3 & -2 & -4 \\ 3 & 7 & 1 & 4 \\ -2 & 1 & 7 & 7 \end{bmatrix}
$$
这里
$$
\left\{ \begin{bmatrix} -3 \\ 7 \\ -4 \\ 1 \end{bmatrix} \right\}
$$
是$A$的null space的basis
$$
\left\{ t \begin{bmatrix} -3 \\ 7 \\ -4 \\ 1 \end{bmatrix} \right\}
$$
是$A$的null space.

**同时注意千万不要忘记集合符号！！！ 考试这里没注意肯定会扣分**

## Rank and Nullity of a Matrix
对于255解决考试题，个人认为一定需要知道这些，同时，考试是很有可能考这种问题的

- Rank: column space的dim，也就是我们化出的**rref**的 **leading one**的个数, 还是上面example1， 我们注意到有3个leading 1，那么他的rank就是3


- Nullity: null space的dim

- Rank Theorem: 对于一个 $m \times n$ matrix $A$, $\mathrm{rank}(A) + nullity(A) = n$. 


## How to find an Orthogonal Projection Matrix to a Vector Space?

Let $W$ be a subspace of $\mathbb{R}^n$ with basis $v_1, v_2, \dots, v_m$, and let $A$ be the matrix with columns $v_1, v_2, \dots, v_m$. 

那么，假如我们想要找一个 **“Orthogonal Projection Matrix onto W”** ，我们可以直接通过下列公式来计算
$$Q = A(A^T A)^{-1} A^T.$$

同时，碰到有一些情况我们也可以用一些更加巧妙的方法，假如我们发现这里 $A$ 是一个square matrix，我们就可以惊喜的发现，我们这里需要求的 $Q$ 实际上就是一个满足到 dim为n，基向量维数为n的空间的orthogonal projection matrix，这时，我们可以直接取 $I_n$, 我们会惊喜的发现，他满足我们所需要的一切条件，就如同hw3.1.3这道题。

## QR Decomposition
注意到这不仅仅适用于square matrix，任何matrix都是可以进行这样的运算的，具体方法参见lecture notes 或者 RC slides，我就不在这里赘述了

## Determinant

对于255这门课来说，计算determinant只需要会基本Laplace Expansion法就可以了，不需要去了解什么对称群之类的东西。同时，如果看到让你算的det是什么$4 \times 4$的也不需要过于慌张，你可以使用慢慢展开的方法，但我会更加推荐你用几条determinant的性质去化简你要算的matrix，你可能会惊喜的发现题目里的matrix化简着化简着就2行一模一样了，就直接变成0了

关于怎么化简，比如说，我把某一行乘以2，再在这个算式前面加个1/2的倍数，我们就应用了一个最基本的性质进行了一些简单的运算，我们还可以再应用行之间的加减之类的操作，我就不在此一一赘述了。

### Reference
1. https://math.oit.edu/~watermang/math_341/341_ch9/F13_341_book_sec_9-3.pdf
2. https://textbooks.math.gatech.edu/ila/projections.html
3. 回家作业和我对去年考试的记忆
4. lecture notes