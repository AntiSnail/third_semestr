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

== Лекция №1 от 08.09.2026г.
=== Тема: Ряды по ортонормированным системам в Евклидовом пространстве

$RR^n quad (x, y) - "скалярное произведение"$

$||x||=|x|=sqrt((x,x))$ - длина, норма

==== Свойства длины (нормы)

+ $|f| >= 0 "и" |f| = 0 ⇔ f = 0 ⇒ |f-g|=0 ⇔ f=g$ 
+ $∀ α ∈ RR: |α f| = |α|dot|f|$
+ Неравенство треугольника:\ $|f+g|≤|f|+|g|$

Доказательства: см. алгем

$e_1, e_2, e_3, ..., e_n$ - ортонормированный базис (ОНБ)

$∀ x ∈ RR^n quad ∃! {c_k}_(k=1)^infinity  quad c_k ∈ RR $\ \
$x=sum_(k = 1)^(n) c_k dot e_k$\ \
$(x, e_l)=sum_(k = 1)^(n) c_k dot (e_k, e_l)= c_l$

$(x, e_l)=c_l$ - ортогональные базисы в бесконечномерных пространствах

Примеры:

+ Бесконечномерное евклидово пространство
+ Базис из ${1, sin x, cos x, ..., cos k x, sin k x, ...} k ∈ NN$

==== Свойства скалярного произведения
$X - "линейное пространство над полем" RR (CC)$ \ Евклидово (унитарное пространство) \

$∀f,g, h ∈ X quad ∀ α ∈ RR$
+ $f + g$
+ $α f$
+ $(f + g, h)=(f,h)+(g, h)$
+ Неравенство Коши-Буняковского: $|(f, g)| ≤|f| dot |g|$

Опр. $f, g ∈ X$ ортогональны, если $(f,g)=0 quad f bot g$

$Φ={φ}_(k=1)^infinity "ортогональная, если" ∀ φ_k ≠0, (φ_i, φ_j)=0 quad i≠j$ \
Φ - отонорминрованна, если ортогональна и нормирована \
($∀ k  quad |φ_k|=1$)

Теорема Пифагора.\
$f bot g ⇔ |f+g|=|f|^2+|g|^2 $\ \
Доказательство:

$|f+g|^2=(f+g,f+g)=(f,f)+(f,g)+(g, f) + (g,g)= \ =(f,f)+(g,g)$

Φ - ОНС (ортонормированная система)

$p_n=sum_(k = 1)^(n) γ_k dot φ_k$ - полином порядка n по системе Ф.

$|p_n|^2=sum_(k = 1)^(n) |γ_k dot φ_k|^2=sum_(k = 1)^(n) γ_k ^2 $

Ф - ОНС. $∀n quad {φ_k}_(k=1)^n$ - ЛНЗ $⇒ X$ - бесконечномерное
#line(length:  100%)
==== Примеры бесконечномерных пространств

+ $l_2={x=(x_1, x_2, ...) | sum_(k = 1)^(infinity) x^2_k < infinity}$ \ Это пространство последовательностей.\ $(x,y)=sum_(k = 1)^(infinity) x_k dot y_k $ \ $x=(1, 1/2, 1/3, ..., 1/n, ...) ∈ l_2$ \ $x=(1, 1/sqrt(2), 1/sqrt(3), ..., 1/sqrt(n),...) ∉ l_2$
+ $L_2[a,b]={f(x), x ∈ [a,b], integral_(a)^(b) f^2(x) dif x} $ \ f и |f| интегрируемы по Риману в собственном или несобственном смысле на [a,b] \ $(f,g)=integral_(a)^(b) f(x) dot g(x)$
#line(length:  100%)
==== Ортогональные системы в $L_2[a,b]$

2. 1. Многочлены
${x^k}_(k=0)^infinity={1, x, x^2, x^3, ...}$ -ЛНЗ, но не ортогональна 

Ортогонализация Грама-Шмидта: \
$φ_0(x)=1$ \ $φ_1(x)=α dot 1 + x = x - (b-a)/2 quad (integral_(a)^(b) (α+x)x dif x = 0 =(φ_0, φ_1))$ \
... \
То, что получится - система многочленов Лежандра на [a,b] ${φ^k}_(k=0)^infinity$

2.2 Ряд Фурье

$tilde(L_2) - (f,g )=1/pi integral_(-pi)^(pi) f(x) dot g(x) dif x$ \
$|f|=1/pi integral_(-pi)^(pi) f^2(x) dif x$

Пример: тригонометрическая система (ТС)

$Φ={1, cos x, sin x, ..., cos n x, sin n x, ...}$ - проверить, что ортогональна

$integral_(-pi)^(pi) cases(cos k x dot cos l x, cos k x dot sin l x, sin k x dot sin l x) dif x = 0, "при" k≠l$

$|cos k x|^2=1/pi integral_(-pi)^(pi) cos^2 x dif x= 1/pi integral_(-pi)^(pi) (1+cos 2 x)/2 dif x=1/pi integral_(-pi)^(pi) 1/2 dif x=1$ \ $k ∈ NN$ \
$|sin k x|^2 =1$ \
$|1|^2=2$ \ $X quad Φ={φ_k}_(k=1)^infinity- "ОНС в "X$ \

==== Ряд посистеме Ф. \
$sum_(k = 1)^(infinity) c_k dot φ_k, c_k in RR$ \
$S_n= sum_(k = 1)^(n) c_k dot φ_k$ - частичная сумма (полином порядка n по системе Ф)

Ряд сходится, если ${S_n}$ сходится в X: \

$∃ s ∈X quad |s_n-s|→^(n→infinity)0 quad sum_(k = 1)^(infinity) c_k dot φ_k =S$

Вопрос: как $c_k$ выражаются через S ?

$(s,φ_l)=(sum_(k = 1)^(infinity) c_k dot φ_k,φ_l)=^?c_l$

$|(s, φ_l) - c_l|=|(s, φ_l)-(s_n, φ_l)|=$ \ $=|(s-s_n, φ_l)|≤|s-s_n|dot|φ_l| →^(n→infinity)0, (s→s^(n→infinity)_n)$


$X quad Φ={φ_k}_(k=1)^infinity$ \
$sum_(k = 1)^(infinity) c_k dot φ_k=s ⇒c_k=(s, φ_k)$

#line(length:  100%)


