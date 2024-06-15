#import "../conf.typ": *

= Свойства интеграла с переменным верхним пределом (непрерывность, дифференцируемость). Формула Ньютона-Лейбница.
== Свойства интеграла с переменным верхним пределом
#definition[
  *Разбиением* $P$ отрезка $[a, b]$ называется конечное множество точек отрезка $[a, b]$:
  #eq[
    $P: a = x_0 < x_1 < ... < x_n = b; quad Delta x_k := x_k - x_(k - 1); k = overline("1, n")$
  ]
]

#definition[
  *Диаметром разбиения* $P$ называется
  #eq[
    $Delta(P) = max_(1 <= i <= n) Delta x_i$
  ]
]

#definition[
  *Верхней суммой Дарбу* разбиения $P$ функции $f$ называется
  #eq[
    $U(P, f) = sum_(k = 1)^n sup_(x in [x_(k - 1), x_k]) f(x) dot Delta x_k$
  ]
]

#definition[
  *Нижней суммой Дарбу* разбиения $P$ функции $f$ называется
  #eq[
    $U(P, f) = sum_(k = 1)^n inf_(x in [x_(k - 1), x_k]) f(x) dot Delta x_k$
  ]
]

#definition[
  Функция $f$ называется *интегрируемой по Риману* на $[a, b]$ ($f in cal(R)[a, b]$),
  если
  #eq[
    $forall epsilon > 0 : exists P : space U(P, f) - L(P, f) < epsilon$
  ]
]

#definition[
  *Интегралом Римана* интегрируемой по Риману на $[a, b]$ функции $f$ называется
  #eq[
    $integral_a^b f(x) dif x = inf_P U(P, f) = sup_P L(P, f)$
  ]
]

#theorem(
  "Основные свойства интеграла Римана",
)[
  + (Линейность) Если $f_1, f_2 in cal(R)[a, b]$, то $f_1 + f_2 in cal(R)[a, b]$,
    причём
    #eq[
      $integral_a^b (f_1 + f_2)(x) dif x = integral f_1(x) dif x + integral f_2(x) dif x$
    ]
    Кроме того, $forall c in RR$ выполняется, что $c f_1 in cal(R)[a, b]$, причём
    #eq[
      $integral_a^b c f_1(x) dif x = c integral_a^b f_1(x) dif x$
    ]
  + (Монотонность) Если $f_1, f_2 in cal(R)[a, b]$ и $forall x in [a, b]: space f_1(x) <= f_2(x)$,
    то
    #eq[
      $integral_a^b f_1(x) dif x <= integral_a^b f_2(x) dif x$
    ]
  + (Аддитивность):
    #eq[
      $f in cal(R)[a, b] <=> forall c in (a, b): space f in cal(R)[a, c] and f in cal(R)[c, b]$
    ]
    Причём $integral_a^b f(x) dif x = integral_a^c f(x) dif x + integral_c^b f(x) dif x$
  + (Оценка) Если $f in cal(R)[a, b]$ и $forall x in [a, b]: space abs(f(x)) <= M$,
    то
    #eq[
      $abs(integral_a^b f(x) dif x) <= M (b - a)$
    ]
]

#definition[
  Пусть $forall b' in (a, b) : space f in cal(R)[a, b']$. Тогда $F(b') = integral_a^b' f(x) dif x$ называется
  *интегралом с переменным верхним пределом*.

  Будем считать, что $F(a) = 0$, а для $alpha > beta$:
  #eq[
    $integral_alpha^beta f(x) dif x = -integral_beta^alpha f(x) dif x$
  ]
]

#theorem(
  "Основные свойства интеграла с переменным верхним пределом",
)[
  Если $f in cal(R)[a, b]$, то интеграл с перменным верхним пределом $F(x)$ непрерывен
  на $[a, b]$.

  Если, кроме того, $f$ непрерывна в $x_0 in [a, b]$, то $F(x)$ дифференцируема в $x_0$,
  причём $F'(x_0) = f(x_0)$.
]

#proof[
  Непрерывность следует из комбинирования свойств аддитивности и оценки:
  #eq[
    $forall x_1, x_2 in [a, b] : x_1 < x_2 and x_2 - x_1 < epsilon / M : space abs(F(x_2) - F(x_1)) &= abs(integral_(x_1)^(x_2) f(x) dif x) <=\ integral_(x_1)^(x_2) abs(f(x)) dif x &<= M(x_2 - x_1) < epsilon$
  ]
  В условиях непрерывности $f$, докажем, что производная интеграла действительно
  равна $f(x_0)$:
  #eq[
    $abs((F(x) - F(x_0)) / (x - x_0) - f(x_0)) = abs(1 / (x - x_0) integral_(x_0)^x (f(t) - f(x_0)) dif t) <= sup_(t in [x_0, x]) abs(f(t) - f(x_0))$
  ]
  Благодаря непрерывности $f$ мы знаем, что при $x -> x_0$ сможем оценить итоговый
  супремум сверху $epsilon$.
]

== Формула Ньютона-Лейбница
#definition[
  *Первообразной* функции $f$ на $[a, b]$ называется такая дифференцируемая на $[a, b]$ функция $F$,
  что
  #eq[
    $forall t in [a, b] : space F'(t) = f(t)$
  ]
]

#definition[
  *Интегральной суммой* $S(P, f, seq(idx: i, end: n, t))$ называется
  #eq[
    $sum_(i = 1)^n f(t_i) Delta x_i$
  ]
  где $P : a = x_0 < ... < x_n = b, forall i = overline("1, n"): t_i in [x_(i - 1), x_i]$.
]

#theorem(
  "Интеграл как предел интегральных сумм",
)[
  #eq[
    $f in cal(R)[a, b] <=> exists lim_(Delta(P) -> 0) S(P, f, seq(idx: i, end: n, t))$
  ]
  При этом $integral_a^b f(x) dif x = lim_(Delta(P) -> 0) S(P, f, seq(idx: i, end: n, t))$
]

#theorem("Основная теорема интегрального исчисления")[
  Если $f in cal(R)[a, b]$ имеет первообразную $F$ на $[a, b]$, то
  #eq[
    $integral_a^b f(x) dif x = F(b) - F(a) = F(x)|_a^b$
  ]
]

#proof[
  Для любого разбиения $P$:
  #eq[
    $F(b) - F(a) attach(=, t: "телескопическая сумма") sum_(k = 1)^n (F(x_k) - F(x_(k - 1))) attach(=, t: "теорема Лагранжа") \
    sum_(k = 1)^n F'(xi_k) Delta x_k = sum_(k = 1)^n f(xi_k) Delta x_k$
  ]
  Устремляя $Delta(P) -> 0$ получим, что $F(b) - F(a)$ равно требуемому интегралу
  по эквивалентному определению.
]