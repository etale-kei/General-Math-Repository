#let title1 = "Metric Geometry Princeton Quals Questions"

#let project(
  title: title1,
  date: datetime.today(),
  body,
) = {
  // Configuración general de la página y fuente
  set page(
    paper: "a4",
    margin: 1.2in,
    numbering: "1",
  )
  set text(font: "New Computer Modern", size: 12pt)
  
  // Título principal (Aquí el # sí va porque [ ] abre modo texto)
  align(center)[
    #v(2em)
    #text(size: 2.48em)[#title] \
    #v(3em)
    #text(size: 1.2em)[#date]
  ]

  // CORREGIDO: Sin # porque estamos en modo código dentro de las llaves { }
  v(2.5em)

  // Sección de Contenidos (Automática)
  show outline.entry.where(level: 1): it => {
    v(0.6em, weak: true)
    strong(it)
  }
  
  text(size: 1.44em, weight: "bold")[Contents]
  v(1em)
  outline(title: none, depth: 1)
  // CORREGIDO: Sin # 
  v(3em)

  // Configuración de los Headings (Secciones)
  set heading(numbering: "1")
  show heading.where(level: 1): it => {
    // Resetear el contador de preguntas en cada sección nueva
    counter("question").update(0)
    
    set text(size: 1em, weight: "bold")
    block(above: 2em, below: 1.5em)[
      #if it.numbering != none {
        counter(heading).display()
        h(0.5em)
      }
      #it.body
    ]
  }

  // Cuerpo del documento
  body
}

// Función #question automatizada
#let question(body) = {
  context {
    let section-num = counter(heading).get().first()
    counter("question").step()
    let q-num = counter("question").get().first()
    
    block(spacing: 1.5em, width: 100%)[
      *Question #section-num.#q-num.* #emph(body)
    ]
  }
}

#show: project.with(
  title: title1,
  date: datetime.today().display("[month repr:long] [day], [year]"),
)

#question()[
  _*(Naor-2023)*_ What can you say about Euclidean sections of $cal(l)^n_1$?
]

#question()[
  _*(Naor-2023)*_ What is Kashin's Theorem?
]

#question()[
  _*(Naor-2023)*_  Define cotype.
]

#question()[
  _*(Naor-2023)*_ Prove the bound $k(X) ≳ n$ for cotype 2.
]

#question()[
  _*(Naor-2023)*_ State and prove Bourgain’s embedding theorem.
]

#question()[
  _*(Guth-2010$*$)*_ What's the systolic inequality?
]

#question()[
  _*(Gabai-2010$*$)*_ What's aspherical? What if the manifold is unbounded?
]

#question()[
  _*(Guth-2010$*$)*_ Sketch a proof of the systolic inequality for the n-torus.
]

#question()[
  _*(Guth-2010$*$)*_ Give an isoperimetric inequality for filling loops in the 3-manifold $S^2 times RR$ where $S^2$ has the round unit sphere metric.
]

#question()[
  _*(Guth-2010$*$)*_ Given two loops of length $L_1, L_2$, the distance between the closest points on two loops is $\geq 1$, what's the maximum linking number?
]