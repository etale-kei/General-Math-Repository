#let project(
  title: "Algebra ",
  date: datetime.today(),
  author: "Kei",
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
    #text(size: 2.48em)[#title]
    #v(-1em)
    #text(size: 1em)[#author]
    #v(1em)
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
  Define the genus of a curve in every way that you know how. Why are these equal?
]

#question()[_*(Katz)*_
State Serre Duality.  Define the Hilbert Polynomial.]

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

#question()[_*(Faltings)*_
  What is a scheme?
]

#question()[_*(Faltings)*_
  Define the genus of a curve (in a couple of ways). Explain how to compute it using the Hilbert polynomial. Why is this the same as the dimension of the space of global 1-forms?
]

#question()[_*(Faltings)*_
  or a coherent sheaf F on P^r associated to the
graded module M, why is the Hilbert polynomial H(n) (:= Euler characteristic
of F(n)) equal to the dimension of M_n for n >> 0?
]

#question()[_*(Faltings)*_
  Compute the genus of the curve y^2 = x^5 - x by using Hurwitz' formula.
]

#question()[_*(Xu, Chengyang)*_
  What do you know about minimal model program on rational surfaces. Why are they different? How do you show they are connected by blow-up and blow-down?
]

#question()[_*(Xu, Chengyang)*_
  What is the class of the canonical divisor on $FF_n$? 
]

#question()[_*(Xu, Chengyang)*_
  In general, consider a ruled surface $f: X = PP(E) arrow B$ on a curve $B$ of higher genus, $E$ is a rank 2 vector bundle, what is the class of the canonical divisor. 
]

#question()[_*(Xu, Chengyang)*_
  What is the class group of a smooth affine conic curve (say, in characteristic 0).
]

#question()[_*(de Jong)*_
  What is an elliptic curve?
]

#question()[_*(de Jong)*_
  Write down a cubic plane curve. Where is the identity? Define the group law for this curve. How do you define it geometrically? 
]

#question()[_*(de Jong)*_
  How do you define the group law for a nodal cubic plane curve? How do you do it geometrically?
]

#question()[_*(de Jong)*_
  How would you define a family of curves? Why do you want flatness?
]

#question()[_*(de Jong)*_
  Suppose you have a not-necessarily flat family over a base scheme. How would you impose conditions to make it a flat family?
]

#question()[_*(de Jong)*_
  Take a quadric and a cubic hypersurface in P^3 and intersect them.  Suppose the resulting curve is as nice as you want.  What is its genus?
]

#question()[_*(de Jong)*_
  State the adjunction formula.
]

#question()[_*(de Jong)*_
  Define genus. What is the canonical sheaf?
]

#question()[_*(Kollar)*_
  Compute the genus of $y^3 = x^6-1$
]

#question()[_*(Kollar)*_
  If X is a projective scheme over the rationals Q, K a finite extension of Q, and X' the base change of X to K, can you relate the cohomology of the structure sheaf of X' to the cohomology of the structure sheaf of X? What if we just look at H^0? How about for H^0 and if we let X = Spec Q[x]/(x^2+1) and K a field containing $QQ[i]$?
]

#question()[_*(Faltings)*_
  Can a genus 2 curve embed the plane? Prove what you need
]

#question()[_*(Faltings)*_
  Give a lower bound for the degree of a map from a genus g curve to $PP$^1.  Can there be an upper bound?
]

#question()[_*(Faltings)*_
  How  would you write down all the holomorphic differentials on the Fermat curve?
]

#question()[_*(Faltings)*_
  Give an example of a non-hyperelliptic curve.  Explain.
]

#question()[_*(Faltings)*_
  What is the Jacobian of a curve?  How do you determine its dimension?
]

#question()[_*(Faltings)*_
  What is the theorem of the cube?  What is it used for?
]

#question()[_*(Faltings)*_
  Compute the cohomology of projective space.
]

#question()[_*(Faltings)*_
  Does every curve embed P^3?  Why are all curves even projective?

  What about embedding a curve into P^2?
]

#question()[_*(Faltings)*_
  What is a regular scheme?  Is regularity the same as smoothness over any base field?
]

#question()[_*(Faltings)*_
  Do you know what Neron minimal models are?  Determinant of cohomology?
]

#question()[_*(Kollar)*_
  Define arithmetic genus. Prove the genus formula. State the explicit computation giving $H^i (PP^n,cal(O)(m))$ and Serre duality
]

#question()[_*(Shou-Wu)*_
  Tell me the definition of a scheme, give examples of affine scheme, projective scheme and a scheme that is not affine nor projective.
]

#question()[_*(Shou-Wu)*_
  Why is X=A^2-{0} not projective nor affine? what does the cohomology of affine/projective scheme look like? 
]

#question()[_*(Shou-Wu)*_
  So we have a map f from X to $PP^2$, there is a G_m action on X, f is an affine map? The push forward of the structure sheaf of X has a decomposition?
]

#question()[_*(Shou-Wu)*_
  Define curves(smooth) and genus. Classify the curves of genus 0, 1, 2, 3
]

#question()[_*(Tang)*_
  Why is the elliptic curve of degree 3?
]

#question()[_*(Tang)*_
  Give the map from elliptic curve to P^2. How do you find that line bundle?
]

#question()[_*(Boyu)*_
  what is the definition of hyperelliptic curves
]

#question()[_*(Boyu)*_
  So is there a meromorphic function from a curve of lower genus to higher genus?
]

#question()[_*(Shou-Wu)*_
  compute the genus of the curve $y^5=x(x-1)(x-lambda)$
]

#question()[_*(Katz)*_
  State Riemann-Roch for curves and Riemann Surfaces
]


#question()[_*(Katz)*_
  Define the arithmetic genus and geometric genus of a variety.
]

#question()[_*(Katz)*_
  What can you say about global sections of $Gamma(X,omega)$?  Sections of $H^1 (X,O)$?
]

#question()[_*(Katz)*_
  What is the genus of $y^2 = x^11 - 1$?  How about $y^2 = f(x)$ with $f(x)$ of odd degree and distinct roots? Give the general genus formula for that curve
]

#question()[_*(Katz)*_
  Talk about intersection theory for a surface.
]

#question()[_*(Katz)*_
  Why does an elliptic curve have a cubic form in P^2?
]

#question()[_*(Katz)*_
  State Abel's Theorem for an elliptic curve. What about higher dimensional varieties?
]

#question()[_*(Katz)*_
  What does Hasse's Theorem say about the number of points on an elliptic curve over a finite field.
]

#question()[_*(Katz)*_
  How does this relate to the Weil Zeta Function of a projective variety? What does this zeta function look like for an elliptic curve? What does it look like for P^n?
  
  (*Hint:* Identical Denominator)
]

#question()[_*(Katz)*_
  Where does the coefficient a_p come from in the elliptic curve's Zeta function?]

#question()[_*(Katz)*_
  Suppose that you have a large finite set of equations over a finite field and the number of points on the resulting variety over $FF_(q^n)$ for all n. Further suppose that you know that the resulting variety is a hypersurface. How might one determine the genus of this hypersurface?
  
  (Hint: Look at the numerator of some zeta function.)
]

#question()[_*(Katz)*_
  Why does an elliptic curve have a cubic form in P^2?
]

#question()[_*(Katz)*_
  Why does an elliptic curve have a cubic form in P^2?
]

= Notes

Careful with Shonwu, pretty recent