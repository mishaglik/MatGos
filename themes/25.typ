#import "../conf.typ": *

= Собственные значения и собственные векторы линейных преобразованийю Диагонализуемость линейных преобразований.
#definition[
  Линейное отображение $phi: V -> V$ называется *линейным преобразованием*.

  Множество всех линейных преобразований на $V$ обозначается как $cal(L)(V)$.
]

#definition[
  Пусть $phi in cal(L)(V)$.

  Вектор $bold(v) in V without {bold(0)}$ называется *собственным вектором*
  оператора $phi$ с собственным значением $lambda in FF$, если $phi(bold(u)) = lambda bold(v)$.

  Скаляр $mu in FF$ называется *собственным значением* оператора $phi$, если
  существует собственный вектор с собственным значением $mu$.
]

#definition[
  *Подпространством* линейного пространства $V$ над полем $FF$ называется такое
  его непустое подмножество $U subset V$, что выполнены следующие условия:
  - $(U, +)$ -- подгруппа в $(V, +)$
  - $forall alpha in F: forall bold(u) in U : space alpha bold(u) in U$
  Обозначение $U <= V$.
]

#definition[
  Пусть $phi in cal(L)(V); lambda in FF$ -- собственное значение оператора $phi$.

  Подпространство $V_lambda := "Ker" (phi - lambda) <= V$ называется *собственным
  подпространством* оператора $phi$, соответствующим собственному значению $lambda$.
]

#definition[
  Пусть $A in M_n (FF)$.

  *Характеристическим многочленом* матрицы $A$ называется многочлен $chi_A (lambda) := det(A - lambda E)$
]

#definition[
  Матрицы $A, B in M_n (FF)$ называются *подобными*, если
  #eq[
    $exists S in M_n (FF), S "обратимая" : space A = S B S^(-1)$
  ]
]

#definition[
  Оператор $phi in cal(L)(V)$ называется *диагонализуемым*, если существует базис
  в $V$, в котором матрица $phi$ имеет диагональный вид.

  Матрица $A in M_n (F)$ называется *диагонализуемой*, если она подобна некоторой
  диагональной.
]

#definition[
  Пусть $phi in cal(L)(V), lambda_0 in FF$ -- собственное значение оператора $phi$.

  *Алгебраической кратностью* собственного значения $lambda_0$ называется
  кратность корня $lambda_0$ в $chi_phi (lambda)$.

  *Геометрической кратностью* -- величина $dim V_(lambda_0)$
]

#definition[
  Пусть $V$ -- линейное пространство, $U_1, U_2 <= V$.

  *Суммой* подпространств $U_1, U_2$ называется следующее множество:
  #eq[
    $U_1 + U_2 := {bold(u_1) + bold(u_2) | bold(u_1) in U_1, bold(u_2) in U_2}$
  ]
  Аналогично определяется сумма $k$ подпространств.
]

#definition[
  Пусть $V$ -- линейное пространство, $U_1, ..., U_k <= V$.

  Сумма подпространств $U := U_1 + ... + U_k$ называется *прямой*, если для любого
  вектора $bold(u) in U$ сущетвует единственный набор векторов $bold(u_1) in U_1, ..., bold(u_k) in U_k$ такой,
  что $bold(u) = bold(u_1) + ... bold(u_k)$.

  Обозначение -- $U = U_1 plus.circle ... plus.circle U_k$
]

#theorem[
  Пусть $phi in cal(L)(V)$. Тогда равносильны следующие условия:
  + Оператор $phi$ диагонализуем
  + Алгебраическая кратность каждого собственного значения оператора $phi$ равна
    геометрической, и $chi_phi$ раскладывается на линейные сомножители, то есть
    имеет следующий вид при некоторых $lambda_1, ... lambda_k in FF; alpha_1, ..., alpha_k in NN$ таких,
    что $sum_(i = 1)^k alpha_i = n$:
    #eq[
      $chi_phi (lambda) = product_(i = 1)^k (alpha_i - alpha)^(alpha_i)$
    ]
  + $V = V_(lambda_1) plus.circle ... plus.circle V_(lambda_k)$, где $V_(lambda_1), ..., V_(lambda_k)$ -- собственные
    подпространства оператора $phi$
  + В $V$ есть базис, состоящий из собственных векторов оператора $phi$
]

#proof[
  $(1 => 2)$ Пусть в некотором базисе $e$ в $V$ матрица оператора $phi$ имеет
  диагональный вид, $lambda_1, ..., lambda_k in FF$ -- различные элементы на
  диагонали, $alpha_1, ..., alpha_k in NN$ -- количества их вхождений в матрицу.

  Тогда $chi_phi (lambda) = product_(i = 1)^k (lambda_i - lambda)^(alpha_i)$. Для
  любого $i in overline("1, k")$ алгебраическая кратность значения $lambda_i$ равна $alpha_i$,
  при этом $alpha_i$ базисных вектором из $e$ являются собственными векторами со
  значениями $lambda_i$, откуда $dim V_(lambda_i) >= alpha_i$, а обратное
  неравенство верно всегда.

  $(2 => 3)$ Пусть $V_(lambda_1), ..., V_(lambda_j) <= V$ -- собственные
  подпространства оператора $phi$. Их сумма -- прямая (т.к. базис) и по условию $sum_(i = 1)^k dim V_(lambda_i) = sum_(i = 1)^k alpha_i = n$,
  поэтому $V_(lambda_1) plus.circle ... plus.circle V_(lambda_k) = V$

  $(3 => 4)$ Выберем базисы $e_1, ..., e_k$ в пространствах $V_(lambda_1), ..., V_(lambda_k)$.
  Тогда, так как сумма этих подпространств прямая, то объединение этих базисов
  даёт базис в $V$.

  $(4 => 1)$ Если $e$ -- базис из собственных векторов, то именно в этом базисе
  матрица оператора $phi$ имеет требуемый диагональный вид.
]
