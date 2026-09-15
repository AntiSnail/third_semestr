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
$ f ∈ X $
Числа $c_k=c_k (f)-(f, c_k), k ∈ NN$, коэффициенты фурье функции f по системе Ф.

Ряд $sum_(k = 1)^(infinity) c_k (f) dot φ_k$ ряд фурье функции f по Ф.

==== Когда ряд сходится к f?

$ Ф={φ_k}_1^infinity quad Ф'={φ_k}_2^infinity $ 
$ sum_(k = 1)^(infinity) c_k dot φ_k quad sum_(k = 2)^(infinity) c_k dot φ_k $

Получим критерий в общем случае

Докажем, что условия из него выполняются для ТС в $tilde(L_2)$

*Теорема.* Экстремальное свойство отрезка (частичной суммы) ряда Фурье.

$ X, Φ⇒ ∀ f ∈ X quad |f-s_n (f)|=inf_( p_n {j_1, ... , j_n}) |f-p_n| $
$p_n=sum_(k = 1)^(n) j_k dot φ_k quad s_n (f) = sum_(k = 1)^(n) c_k (f) dot φ_k $

При этом $|f-s_n (f)|^2 +|s_n (f)|^2=|f|^2$ и $(f-s_n (f)) bot s_n (f)$

Частный случай: $X=RR^3$ \
$f=(c_1, c_2, c_3)=sum_(k = 1)^(3) c_k dot φ_k$

$n=1 quad |f-p_1|=|f-j_1 dot φ_1|$\
$n=2 quad |f-p_2|=|f-(j_1 dot φ_1 + j_2 dot φ_2)| →_"min" j_1 j_2 $

#figure(
  image("/assets/image-1.png", width: 40%, fit: "contain")
)

*Доказательство:*  

$(f,p_n)=(f, sum_(k = 1)^(n) j_k dot φ_k)=sum_(k = 1)^(n) j_k dot (f, φ_k)=sum_(k = 1)^(n) j_k dot c_k (f) $

$ |f-p_n|^2=(f-p_n, f-p_n)=|f|^2-2 dot sum_(k = 1)^(n) j_k dot c_k (f) + |p_n|^2= $ 
$=|f|^2- 2 dot sum_(k = 1)^(n) j_k dot c_k (f)+sum_(k = 1)^(n) j_k^2+sum_(k = 1)^(n) c_k^2 (f)-sum_(k = 1)^(n) c_k^2 (f)=$ 
$ =sum_(k = 1)^(n) (c_k (f)-j_k)^2+|f|^2-sum_(k = 1)^(n) c_k^2 (f) - "(*)" $
$sum_(k = 1)^(n) (c_k (f)-j_k)^2=0 ⇔ j_k=c_k (f) $

Подставим в (\*) $p_n=sum_(k = 1)^(n) c_k (f) dot φ_k=s_n (f)$

$ |f-p_n^\*|^2=|f-s_n (f)|^2=|f|^2-|s_n (f)|^2 $

*Теорема.* Критерии сходимости ряда Фурье.

$X, Φ ⇒ ∀ f ∈ X$

Следующие свойства равносильны:
+ $∃ ! {c_k}_1^infinity quad f=sum_(k = 1)^(infinity) c_k dot φ_k$ - Ф - базис Шаудера в пространстве Х
+ $∀ ε>0 quad ∃p_n quad |f-p_n|<ε $ Ф полна в X
+ $|f|^2=sum_(k = 1)^(infinity) (c_k (f))^2$ - равенство Парсеваля (Ф замкнута)

*Доказательство.*

$(1) ⇒ (2) quad f=sum_(k = 1)^(infinity) c_k dot φ_k "в силу (1)" ⇒ c_k = c_k (f)$\
$|f-s_n (f)|→_(n→0)0 ⇒∀ε  quad ∃p_n^\*=s_n (f) quad |f-p_n|<ε$

$(2) ⇒ (1) quad ∀ ε>0 quad ∃p_n quad |f-p_n|<ε ⇒ ∀m>n $ \ $|f-s_m (f)| ≤|f-p_n|< ε$

$(1)=(2) ⇒ (3) quad |f-s_n (f)|^2 +|s_n (f)|^2 =|f|^2 (\*\*)$ \
$s_n (f) = sum_(k = 1)^(n) c_k^2 (f)$\

в (\*\*) $n→ infinity ⇒^((1)) |f-s_n (f)|→0 ⇒ |s_n (f)|^2 → |f|^2 ⇒ $ \
$⇒ sum_(k = 1)^(n) c_k^2 (f)→|f|^2$

$(3)⇒(1) "в (**)" n→ infinity$\
$ |s_n (f)|^2 + |f-s_n (f)|^2 =|f|^2 quad |s_n (f)|^2 → |f|^2 ⇒$\
$ ⇒ |f-s_n (f)|^2  → 0$
\ \ \ 
==== Ряды Фурье по ТС
Цель - ТС полна в $tilde(L_2)$

$square → (Y, C_b, C_n)$ - что-то на лекции было про jpeg\
$ tilde(L_2) - 1/pi integral_(-pi)^(pi) f^2 dif x < infinity $ 
$ tilde(L_1) - 1/pi integral_(-pi)^(pi) f^2 dif x < infinity $

$f ∈ tilde(L_2) ⇒ f ∈ tilde(L_1)$ \
$(|f|,1)=1/pi integral_(-pi)^(pi) |f| dif x ≤(integral_(-pi)^(pi) |f|^2 dif x)^(1/2)_(<infinity) dot (integral_(-pi)^(pi) 1 dif x)^(1/2)_(<infinity)⇒$\
$integral |f| <infinity$

Далее $tilde(Φ)={1, cos x, sin x, cos 2 x, ...}$
#line(length:  100%)

$a_k dot cos k x +b_k dot sin k x = A_k dot cos (k x + Θ_k)$ - гармоника

$A_k≥0 - "амплитуда" quad Θ_k -"начальная фаза"$

$p_n=a_0/2+sum_(k = 1)^(n) (a_k dot cos k x +b_k dot sin k x) quad (2 n + 1)$ - коэффициент \ \
$a_0/2+sum_(k = 1)^(n) (a_k dot cos k x +b_k dot sin k x)$ - тригонометрический ряд
#line(length:  100%)

*Теорема.* \
Если тригонометрический ряд сходится к $f$ в $L_1$ (или $L_2$), то его коэффициенты выражаются через сумму ряда по методу Эйлера-Фурье.

$a_k=1/pi integral_(-pi)^(pi) f(x) cos k x dif x quad k=0,1,...$\

$b_k=1/pi integral_(-pi)^(pi) f(x) sin k x dif x quad k=1,2,...$

