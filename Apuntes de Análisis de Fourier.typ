#import "ams-es.typ": *
#import "@preview/physica:0.9.8": *

#show: ams-article.with(
  title: [Apuntes de Análisis de Fourier],
  authors: (
    (
      name: "K",
//      department: [Department of Mathematics],
//      organization: [University of South Carolina],
//      location: [Columbia, SC 29208],
//      email: "howard@math.sc.edu",
//      url: "www.math.sc.edu/~howard"
    ),
  ),
//  abstract: "",
//  bibliography: bibliography("refs.bib"),}
)

#outline(title: "Index")

= Series de Fourier
#definicion()[
  Si $f$ es una función integrable dada en el intervalo $[a,b]$ de longitud $L$, entonces el *$n^"ésimo"$ coeficiente de Fourier* de $f$ es dado por:

  $ accent(f,hat)(n) eq 1/L integral_(a)^b f(x) e^(-2pi i n x) slash L dif x, space space n in ZZ $
]

== Unicidad de la Serie de Fourier de una Función

#teorema()[
  1
]

#prueba()[
  1
]

= Convolución

= Ejercicios