# O и другие буквы

>В дискретной математике функции чаще всего заданы на $\mathbb{N}$ и сравнение проводится в окрестности единственной нетривиальной предельной точки $\infty$
>т.е. «*при больших $n$*»

>[!definition] Базовые определения:
>- $f(n) = O(g(n))$, если $\exists n_{0} \in \mathbb{N}, C > 0: |f(n)| \leqslant C|g(n)| \ \ \ \forall n > n_{0}$
>  ($\overline{\lim_{ n \to \infty }} \frac{|f(n)|}{|g(n)|} < \infty$)
>
>---
>
>- $f(n) = o(g(n))$, если $\forall C > 0 \exists n_{0} \in \mathbb{N}: |f(n)| \leqslant C|g(n)| \ \ \ \forall n > n_{0}$
>  ($\lim_{ n \to \infty } \frac{|f(n)|}{|g(n)|} = 0$)
>
>---
>
>- $f(n) = \Omega(g(n))$, если $\exists n_{0} \in \mathbb{N}, C > 0: |f(n)| \geqslant C|g(n)| \ \ \ \forall n > n_{0}$
>  ($\underline{\lim_{ n \to \infty }} \frac{|f(n)|}{|g(n)|} > 0$)
>
>---
>
>- $f(n) = \Theta(g(n))$, если $f(n) = O(g(n))$ и $f(n) = \Omega(g(n))$
>  ($\exists C_{1},C_{2} > 0: C_{1} \leqslant \underline{\lim_{ n \to \infty }} \frac{|f(n)|}{|g(n)|}, \overline{\lim_{ n \to \infty }} \frac{|f(n)|}{|g(n)|} \leqslant C_{2}$)

^b316c3

>В записях вида $f(n) = O(g(n))$ знак $=$ не означает равенства
>иначе $n = O(n^2)$ и $n^2 = O(n^2)$ повлечет $n = n^2$