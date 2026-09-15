// ============================================
// БАЗОВЫЕ НАСТРОЙКИ
// ============================================
#import "@preview/simple-plot:0.9.0": plot, volume-of-revolution, riemann-sum

// Страница
#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 4cm, left: 2cm, right: 2cm),
  numbering: "1",
  number-align: center,
)

// Текст
#set text(
  font: "Cambria Math",
  size: 16pt,
)

// Настройка подсветки
#set highlight(
  fill: rgb("#f0f8ff"),
  radius: 3pt,
  extent: 2pt,
  stroke: none,
)

// Межстрочный интервал (полуторный)
#set par(leading: 0.5em)

// Выравнивание по ширине
#set par(justify: true)

// Заголовки
#show heading: set text(
  weight: "bold",
  size: 1.15em,
)

#show heading.where(level: 1): set text(size: 1.3em)
#let bar(x) = math.accent(x, math.macron)

= Математический анализ

== Лекция №2 от 15.09.2026г.
=== Тема: хз

==== Определения

#line(length: 100%)
$C_(2pi)$ - непрерывные $2pi$ переодические $f(x), x ∈ RR$ \
$|f|=|f|_C_(2pi) = max_(x ∈ RR) |f (x)|=max_(x ∈ [-pi,pi]) |f(x)|  $ \
$f |_[-pi,pi]=: tilde(f)$-непрерывна
#figure(
  image("/assets/image-2.png", width: 40%, fit: "contain")
)

Обратно $tilde(f)$ можно продолжить до непрерывности, $2pi "период на" RR$.
#line(length: 100%)
$tilde(f) (x)=|x|, x ∈ [-pi,pi]$ - непрерывна\
$tilde(f) (-pi)=tilde(f) (pi) ⇒$ можно продолжить до непрерывной

#figure(
  image("/assets/image-3.png", width: 40%, fit: "contain")
)
#line(length: 100%)
\ \ \ \
#line(length: 100%)
$tilde(f) (x)=x, x ∈ [-pi,pi]$ - непрерывна\
$tilde(f) (-pi)!=tilde(f) (pi) ⇒$ нельзя продолжить до $f "из" C_(2pi)$

#figure(
  image("/assets/image-4.png", width: 40%, fit: "contain")
)
#line(length: 100%)
$tilde(L_(2pi)) - 2pi "переодические" f(x), x ∈ RR$\ либо f интегрируема на $[-pi,pi]$, \ либо несобственный интеграл $integral_(-pi)^(pi) f(x) dif x$ имеет конечное число особых точек и сходится абсолютно

$|f| =|f|_(tilde(L_(2pi)))=|f|_1=1/pi integral_(-pi)^(pi) |f(x)| dif x$
#line(length: 100%)
$tilde(L_(2pi))^2 - 2pi "переодические" f(x), x ∈ RR$ \ либо f интегрируема на $[-pi,pi]$, \ либо несобственный интеграл $integral_(-pi)^(pi) f(x) dif x$ 

и сходится $integral_( -pi)^(pi ) f^2 dif x$

$|f| =|f|_(tilde(L_(2pi))^2)=|f|_2=(1/pi integral_(-pi)^(pi) f^2(x) dif x)^(1/2)$

Скалярное произведение:
$1/pi integral_(-pi)^(pi) f(x) dot g(x) dif x)$
#line(length: 100%)

$f ∈ C_(2pi)⇒tilde(L_(2pi))^2 $\
$ |f|_2=(1/pi integral_(-pi)^(pi) f^2(x) dif x)^(1/2) ≤(1/pi integral_(-pi)^(pi) |f|^2_(C_(2pi)) dif x)^(1/2) = |f|_(C_(2pi)) dot sqrt(2) $

$f in tilde(L_(2pi))^2 ⇒ tilde(L_(2pi))$ \
$|f|_1≤|f|_2 dot sqrt(2)$ - см прошлую лекцию

==== ТС $Φ ={1, cos k x, sin k x, k ∈ NN}$
Когда Ф базис в $tilde(L_(2pi))^2$ и когда Ф полна в $C_(2pi)$?

$p_n (x)=α_0/2+sum_(k = 1)^(n) (α_k dot cos k x + β_k dot sin k x)$ - тригонометрический полином порядка n.

Линкйная комбинация первых (2n+1) функций Ф.

$Φ={φ_k}_1^infinity, p_n=sum_(k = 1)^(n) γ_k dot φ_k$
#line(length: 100%)
*Теорема.* \
(1) - $α_0/2+sum_(k = 1)^(infinity) (α_k dot cos k x + β_k dot sin k x)$ - сходится к $f ∈ tilde(L_(2pi)),$ \ 

$ (f ∈ tilde(L_(2pi))^2, C_(2pi) )$ \


Если тригонометрический ряд сходится к $f$ в $L_1$ (или $L_2$), то его коэффициенты выражаются через сумму ряда по методу Эйлера-Фурье.

$a_k=1/pi integral_(-pi)^(pi) f(x) cos k x dif x quad k=0,1,... quad (f, cos k x) "в" tilde(L_(2pi))^2$\
(2)\
$b_k=1/pi integral_(-pi)^(pi) f(x) sin k x dif x quad k=1,2,... quad (f, sin k x) "в" tilde(L_(2pi))^2$

*Доказательство.*

$s_n (x)=a_0/2+sum_(k = 1)^(n) (a_k dot cos k x + b_k dot sin k x)$ - частичная сумма

$ (s_n (x), cos l x)=(α_0/2, cos l x)+sum_(k = 1)^(n) a_k dot (cos k x, cos l x) + $  $ +b_k dot (sin k x, cos l x)=cases(a_l dot 1 quad "для" l={1, .., n},0 quad l>n, 1/pi integral_(-pi)^(pi) a_0/2 dif x=a_0 quad l=0) $

$|(f, cos l x) - a_l|=|(f, cos l x)-(s_n, cos l x)|=|(f-s_n, cos l x)|=$ \ $|1/pi integral_(-pi)^(pi) (f-s_n) cos l x dif x| ≤ |1/pi integral_(-pi)^(pi) (f-s_n) dif x|=|f-s_n|_1→_(n→infinity)0$ по условию.


==== Тригонометрический ряд Фурье функции

$f ∈ tilde(L_(2pi)), (tilde(L_(2pi))^2, C_(2pi))$
вычислим:\
$a_k=a_k (f) = (f,cos k x), k=0,1,...$ \
$b_k=b_k (f) = (f,sin k x), k=1,2,...$ \

Сопоставим f ряд:
$f ~ a_0/2+sum_(k = 1)^(infinity) (a_k dot cos k x + b_k dot sin k x)$ -(3)

Будет ли (3) сходится к f в каком-либо смысле? \
Даже если f непрерывна, то ряд три может расходится на множестве рациональных чисел. Известны такие функции.
#line(length: 100%)
*Лемма.* Римана об осциляции.

$ f∈tilde(L_(2pi)) ⇒$ её коэффициенты Фурье $a_k (f)→_(k→infinity) 0$,  $b_k (f)→_(k→infinity) 0$ 
$f ∈ tilde(L_([a,b]))⇒integral_(a)^(b) f(x) cases(cos ν x, sin ν x) d x→0, ν→ infinity$

*Доказательсвто.*

#figure(
  image("/assets/image-5.png", width: 40%, fit: "contain")
)

Пусть f непрерывно дифф.

$integral_(a)^(b) f(x) cos k x dif x=|(f(x)sin ν x)/ν|_a^b - 1/ν integral_(a)^(b) f'(x) sin ν x dif x|≤$ \ $≤1/ν (|f(b)|+|f(a)|+ integral_( a)^(b) |f'(x)| dif x)→_(ν→ infinity ) 0$

Д/З: $f ∈ tilde(L)_([a,b])$ - приблизить непрерывно дифф функций

#line(length: 100%) \ 

==== Представление частичных сумм ряда Фурье через ядро Дирихле. Свертка.

Частичная сумма ряда (3) \
$s_n f(x)=a_0/2+sum_(k = 1)^(infinity) (a_k dot cos k x + b_k dot sin k x)=cases(a_k=(f(t), cos k t), b_k=(f(t), sin k t))=$ \
$=1/2(f(t),1)+sum_(k = 1)^(n) (f(t),cos k t) cos k x+(f(t), sin k t) sin k x=$ \ $=(f(t), 1/2+sum_(k = 1)^(n) cos k t dot cos k x+sin k t dot sin k x)=$ \ $=(f(t), 1/2+sum_(k = 1)^(n) cos k (x-t))=$ \ 
$=1/pi integral_(-pi)^(pi) f(t)dot (1/2+sum_(k = 1)^(n) cos k (x-t))d t$ \ Ядро Дирихле порядка n: $D_n (u) 1/2+sum_(k = 1)^(n) cos k (x-t)$

$D_n$ - четное, $max |D_n (u)| =D_n (1)=1/2+n $\
$1/pi integral_(-pi)^(pi) D_n (u) d u=1/pi integral_(-pi)^(pi) (d u)/2=1$
#figure(
  image("/assets/image-6.png", width: 40%, fit: "contain")
)


$s_n f(x)=1/pi integral_(-pi)^(pi) f(t) dot D_n (x-t) dif t$


