// ============================================
// БАЗОВЫЕ НАСТРОЙКИ
// ============================================
#import "@preview/simple-plot:0.9.0": plot, volume-of-revolution, riemann-sum

// Страница
#set page(
  paper: "a4",
  margin: 2cm,
  numbering: "1",
  number-align: center,
)

// Текст
#set text(
  font: "Bahnschrift",
  size: 16pt,
)

// Межстрочный интервал (полуторный)
#set par(leading: 0.5em)

// Выравнивание по ширине
#set par(justify: true)

// Заголовки - просто жирные и чуть больше
#show heading: set text(
  weight: "bold",
  size: 1.05em,
)

#show heading.where(level: 1): set text(size: 1.3em)

// ============================================
// ТЕКСТ ДОКУМЕНТА
// ============================================

= Дискретная математика
== Урок 1. Лекция от 03.09.2026г

#block(
  fill: oklab(82.27%, 0.094, 0.033),
  inset: 10pt,
)[
  ГАЗ в магаз
]

// Простой график параболы
#plot(
  xmin: -3, xmax: 3,
  ymin: -1, ymax: 5,
  show-grid: true,
  (fn: x => calc.pow(x, 2), stroke: blue + 1.5pt),
)

#block(
  fill: rgb("#f0f8ff"),    // простой цвет вместо oklab
  inset: 10pt,
  radius: 5pt,             // скруглил уголки
  stroke: 1pt + rgb("#b0c4de"), // добавил рамку
)[
  #text(size: 15pt)[
    дпвлда
  ]

  #v(0.3cm)

  #text(size: 15pt, fill: gray)[
    павпбдап.
  ]
]