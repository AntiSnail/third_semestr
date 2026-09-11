# $n$-е простое число

>Пусть $\pi(n)$ - количество простых чисел, *не превосходящих $n$*
>Одна из важнейших комбинаторных теорем утверждает, что $\pi(n) \sim \frac{n}{\ln n}$
>более точно, $\pi(n) = \frac{n}{\ln n} + O\left( \frac{n}{\ln^2n} \right)$
>
>*Задача:* найти асимптотическую формулу для $n$-го простого числа
>
>*Решение:* пусть $p = p(n)$ - $n$-е простое число, тогда $\pi(p) = n$
>$\Rightarrow n = \frac{p}{\ln p} + O\left( \frac{p}{\ln^2p} \right)$
>надо решить это «уравнение» относительно $p$
>
>$O\left( \frac{p}{\ln^2p} \right) = o\left( \frac{p}{\ln p} \right) \Rightarrow \frac{p}{\ln p} = O(n)$
>$\Rightarrow O\left( \frac{p}{\ln^2p} \right) = O\left( \frac{n}{\ln p} \right) = O\left( \frac{n}{\ln n} \right)$ (т.к. $p > n$)
>$\Rightarrow \frac{p}{\ln p} = n + O\left( \frac{n}{\ln n} \right) = n\left( 1 + O\left( \frac{1}{\ln n} \right) \right) \Rightarrow p = n\ln p\left( 1 + O\left( \frac{1}{\ln n} \right) \right)$
>надо избавиться от $\ln p$ справа; логарифмируем обе части
>$\ln p = \ln n + \ln \ln p + O\left( \frac{1}{\ln n} \right)$
>$p < n^2$ для больших $n \Rightarrow \ln p < \ln \ln n + O(1)$
>$\Rightarrow \ln p = \ln n + \ln \ln n + O(1)$
>$\Rightarrow p = n(\ln n + \ln \ln n + O(1))\left( 1 + O\left( \frac{1}{\ln n} \right) \right) = n\ln n + n\ln \ln n + O(n)$