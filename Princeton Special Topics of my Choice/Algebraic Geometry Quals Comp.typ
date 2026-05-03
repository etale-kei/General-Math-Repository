#let project(
  title: "Algebra ",
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
  title: "Algebraic Geometry Princeton Quals Questions",
  date: datetime.today().display("[month repr:long] [day], [year]"),
)


#question()[_*(Kollar)*_
  Compute the genus of the curve $x^3 = y^6+1$ 
]

#question()[_*(Katz)*_
  Define the genus of a curve in every way that you know how.
]

#question()[_*(Katz)*_
Why are these equal?  State Serre Duality.  Define the Hilbert
Polynomial.]

#question()[_*(Katz)*_
Compute the genus of the Fermat curve in every way you can.
]

#question()[_*(Katz)*_
  What does adjunction say in the case of the Fermat curve?  How about a degree $d$ hypersurface?.
]

#question()[_*(Katz)*_
  What are such hypersurfaces called ($K 3$ surfaces)?
]


#question()[_*(Katz)*_
  What happens if I know the number of points of the variety over a finite field with $p^r$ elements for all $r$?
]

#question()[_*(Katz)*_
  Suppose a variety has exactly $p^n + 1$ points over a finite field of characteristic $p^n$. Specifically, consider the projective $n$-space, $P^n$, over a finite field with $p^n$ elements.

What can we deduce about this variety?  

Do you know how to prove this?
]

#question()[_*(Katz)*_
  State the Weil Conjectures
]

#question()[_*(Katz)*_
  Suppose that my equations are defined over $ZZ$.  What can I say when I base change to various fields?
]


#question()[_*(Katz)*_
  State Riemann-Roch. What is Riemann Roch good for?
]

#question()[_*(Katz)*_
  What's the relationship between divisors and sections of invertible
sheaves?
]

#question()[_*(Katz)*_
  What would Weierstrass say about elliptic curves?
]

#question()[_*(Katz)*_
  Define the Weierstrass p-function. What are its basic properties? What can you say about its poles? Does it satisfy a differential equation? 

  How would you know that there should exist such a differential equation?
]

#question()[_*(Katz)*_
   Give me a 30 second sketch of everything you know about Riemann-Roch in higher dimensions. What is this useful for?
]

#question()[_*(Bhatt)*_
  Embed a genus 1 curve in projective space.
]

#question()[_*(Venkatesh)*_
  Why is it called an elliptic curve?
]


#question()[_*(Bhatt)*_
  What if it's over $RR$ and has no $RR$-points? Then can you embed in $PP^2$? What about a finite field?
]

#question()[_*(Bhatt)*_
  How can you always find an $FF_p$ point of a genus 1 curve?
]

#question()[_*(Bhatt)*_
  Can I embed a genus 1 curve in higher P^N as a complete intersection?
]

#question()[_*(Bhatt)*_
  Give an example of a smooth affine curve which has nontrivial Picard group.
]

#question()[_*(Bhatt)*_
  Can $"Pic"(X)$ be finitely generated? Work over $CC$ and countable field cases.
]

#question()[_*(Bhatt)*_
  
]

#question()[_*(Bhatt)*_
  If I blow up $X$ surface at a point how does the cohomology change?
]

#question()[_*(Bhatt)*_
  
]

#question()[_*(Bhatt)*_
  1
]

#question()[_*(Shimura)*_
  What is a scheme?
]

#question()[_*(Shimura)*_
  Define the genus of a curve (in a couple of ways). Explain how to compute it using the Hilbert polynomial. Why is this the same as the dimension of the space of global 1-forms?
]

#question()[_*(Shimura)*_
  or a coherent sheaf F on P^r associated to the
graded module M, why is the Hilbert polynomial H(n) (:= Euler characteristic
of F(n)) equal to the dimension of M_n for n >> 0?
]

#question()[_*(Shimura)*_
  Compute the genus of the curve y^2 = x^5 - x by using Hurwitz' formula.
]

#question()[_*(Xu, Chengyang)*_
  What do you know about minimal model program on rational surfaces. Why are they different? How do you show they are connected by blow-up and blow-down?
]

#question()[_*(Xu, Chengyang)*_
  What is the class of the canonical divisor on F_n? 
]

#question()[_*(Xu, Chengyang)*_
  In general, consider a ruled surface f: X = P(E) \to B on a curve B of higher genus, E is a rank 2 vector bundle, what is the class of the canonical divisor. 
]

#question()[_*(Xu, Chengyang)*_
  What is the class group of a smooth affine conic curve (say, in characteristic 0).
]

#question()[_*(Xu, Chengyang)*_
  
]

#question()[_*(Xu, Chengyang)*_
  
]