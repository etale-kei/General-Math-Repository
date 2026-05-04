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


#question()[_*(Kollar-2001)*_
  Compute the genus of the curve $x^3 = y^6+1$ 
]

#question()[_*(Katz-2000)*_
  Define the genus of a curve in every way that you know how. Why are these equal?
]

#question()[_*(Katz-2000)*_
State Serre Duality.]

#question()[_*(Katz-2000)*_
Define the Hilbert Polynomial. What are the degree, the leading coefficient, and the last coefficient of the Hilbert polynomial?]

#question()[_*(Katz-2000)*_
  What is the Fermat curve? Compute the genus of the Fermat curve in every way you can. Give a basis of its holomorphic differentials.
]

#question()[_*(Katz-2000)*_
  What does adjunction say in the case of the Fermat curve?  How about a degree $d$ hypersurface?.
]

#question()[_*(Katz-2000)*_
  What are such hypersurfaces called ($K 3$ surfaces)?
]


#question()[_*(Katz-2000)*_
  What happens if I know the number of points of the variety over a finite field with $p^r$ elements for all $r$?
]

#question()[_*(Katz-2000)*_
  Suppose a variety has exactly $p^n + 1$ points over a finite field of characteristic $p^n$. Specifically, consider the projective $n$-space, $P^n$, over a finite field with $p^n$ elements.

What can we deduce about this variety?  

Do you know how to prove this?
]

#question()[_*(Katz-2000)*_
  State the Weil Conjectures
]

#question()[_*(Katz-2000)*_
  Suppose that my equations are defined over $ZZ$.  What can I say when I base change to various fields?
]


#question()[_*(Katz-2000)*_
  State Riemann-Roch. What is Riemann Roch good for?
]

#question()[_*(Katz-2000)*_
  What's the relationship between divisors and sections of invertible
sheaves?
]

#question()[_*(Katz-2000)*_
  What would Weierstrass say about elliptic curves?
]

#question()[_*(Katz-2000)*_
  Define the Weierstrass p-function. What are its basic properties? What can you say about its poles? Does it satisfy a differential equation? 

  How would you know that there should exist such a differential equation?
]

#question()[_*(Katz-2000)*_
   Give me a 30 second sketch of everything you know about Riemann-Roch in higher dimensions. What is this useful for?
]

#question()[_*(Bhatt-2025)*_
  Embed a genus 1 curve in projective space.
]

#question()[_*(Venkatesh-2025)*_
  Why is it called an elliptic curve?
]


#question()[_*(Bhatt-2025)*_
  What if it's over $RR$ and has no $RR$-points? Then can you embed in $PP^2$? What about a finite field?
]

#question()[_*(Bhatt-2025)*_
  How can you always find an $FF_p$ point of a genus 1 curve?
]

#question()[_*(Bhatt-2025)*_
  Can I embed a genus 1 curve in higher P^N as a complete intersection?
]

#question()[_*(Bhatt-2025)*_
  Give an example of a smooth affine curve which has nontrivial Picard group.
]

#question()[_*(Bhatt-2025)*_
  Can $"Pic"(X)$ be finitely generated? Work over $CC$ and countable field cases.
]

#question()[_*(Bhatt-2025)*_
  
]

#question()[_*(Bhatt-2025)*_
  If I blow up $X$ surface at a point how does the cohomology change?
]

#question()[_*(Bhatt-2025)*_
  
]

#question()[_*(Bhatt-2025)*_
  1
]

#question()[_*(Faltings-1992)*_
  What is a scheme?
]

#question()[_*(Faltings-1992)*_
  Define the genus of a curve (in a couple of ways). Explain how to compute it using the Hilbert polynomial. Why is this the same as the dimension of the space of global 1-forms?
]

#question()[_*(Faltings-1992)*_
  or a coherent sheaf F on P^r associated to the
graded module M, why is the Hilbert polynomial H(n) (:= Euler characteristic
of F(n)) equal to the dimension of M_n for n >> 0?
]

#question()[_*(Faltings-1992)*_
  Compute the genus of the curve y^2 = x^5 - x by using Hurwitz' formula.
]

#question()[_*(Xu, Chengyang-2022)*_
  What do you know about minimal model program on rational surfaces. Why are they different? How do you show they are connected by blow-up and blow-down?
]

#question()[_*(Xu, Chengyang-2022)*_
  What is the class of the canonical divisor on $FF_n$? 
]

#question()[_*(Xu, Chengyang-2022)*_
  In general, consider a ruled surface $f: X = PP(E) arrow B$ on a curve $B$ of higher genus, $E$ is a rank 2 vector bundle, what is the class of the canonical divisor. 
]

#question()[_*(Xu, Chengyang-2022)*_
  What is the class group of a smooth affine conic curve (say, in characteristic 0).
]

#question()[_*(de Jong-1998)*_
  What is an elliptic curve?
]

#question()[_*(de Jong-1998)*_
  Write down a cubic plane curve. Where is the identity? Define the group law for this curve. How do you define it geometrically? 
]

#question()[_*(de Jong-1998)*_
  How do you define the group law for a nodal cubic plane curve? How do you do it geometrically?
]

#question()[_*(de Jong-1998)*_
  How would you define a family of curves? Why do you want flatness?
]

#question()[_*(de Jong-1998)*_
  Suppose you have a not-necessarily flat family over a base scheme. How would you impose conditions to make it a flat family?
]

#question()[_*(de Jong-1998)*_
  Take a quadric and a cubic hypersurface in P^3 and intersect them.  Suppose the resulting curve is as nice as you want.  What is its genus?
]

#question()[_*(de Jong-1998)*_
  State the adjunction formula.
]

#question()[_*(de Jong-1998)*_
  Define genus. What is the canonical sheaf?
]

#question()[_*(Kollar-2015$*$)*_
  Compute the genus of $y^3 = x^6-1$
]

#question()[_*(Kollar-2015$*$)*_
  If X is a projective scheme over the rationals Q, K a finite extension of Q, and X' the base change of X to K, can you relate the cohomology of the structure sheaf of X' to the cohomology of the structure sheaf of X? What if we just look at H^0? How about for H^0 and if we let X = Spec Q[x]/(x^2+1) and K a field containing $QQ[i]$?
]

#question()[_*(Faltings-1996$*$)*_
  What is an elliptic curve? Compute the genus of $y^2 = x^5 - x$ Can a genus 2 curve embed the plane? Prove what you need
]

#question()[_*(Faltings-1996$*$)*_
  Give a lower bound for the degree of a map from a genus g curve to $PP$^1.  Can there be an upper bound?
]

#question()[_*(Faltings-1996$*$)*_
  How  would you write down all the holomorphic differentials on the Fermat curve?
]

#question()[_*(Faltings-1996$*$)*_
  Give an example of a non-hyperelliptic curve.  Explain.
]

#question()[_*(Faltings-1996$*$)*_
  What is the Jacobian of a curve?  How do you determine its dimension?
]

#question()[_*(Faltings-1996$*$)*_
  What is the theorem of the cube?  What is it used for?
]

#question()[_*(Faltings-1996$*$)*_
  Compute the cohomology of projective space.
]

#question()[_*(Faltings-1996$*$)*_
  Does every curve embed P^3?  Why are all curves even projective?

  What about embedding a curve into P^2?
]

#question()[_*(Faltings-1996$*$)*_
  What is a regular scheme?  Is regularity the same as smoothness over any base field?
]

#question()[_*(Faltings-1996$*$)*_
  Do you know what Neron minimal models are?  Determinant of cohomology?
]

#question()[_*(Kollar-2001)*_
  Define arithmetic genus. Prove the genus formula. State the explicit computation giving $H^i (PP^n,cal(O)(m))$ and Serre duality
]

#question()[_*(Shou-Wu-2021)*_
  Tell me the definition of a scheme, give examples of affine scheme, projective scheme and a scheme that is not affine nor projective.
]

#question()[_*(Shou-Wu-2021)*_
  Why is X=A^2-{0} not projective nor affine? what does the cohomology of affine/projective scheme look like? 
]

#question()[_*(Shou-Wu-2021)*_
  So we have a map f from X to $PP^2$, there is a G_m action on X, f is an affine map? The push forward of the structure sheaf of X has a decomposition?
]

#question()[_*(Shou-Wu-2021)*_
  Define curves(smooth) and genus. Classify the curves of genus 0, 1, 2, 3
]

#question()[_*(Tang-2021)*_
  Why is the elliptic curve of degree 3?
]

#question()[_*(Tang-2021)*_
  Give the map from elliptic curve to P^2. How do you find that line bundle?
]

#question()[_*(Boyu-2021)*_
  what is the definition of hyperelliptic curves
]

#question()[_*(Boyu-2021)*_
  So is there a meromorphic function from a curve of lower genus to higher genus?
]

#question()[_*(Shou-Wu-2021)*_
  compute the genus of the curve $y^5=x(x-1)(x-lambda)$
]

#question()[_*(Katz-2003$*$)*_
  State Riemann-Roch for curves and Riemann Surfaces
]


#question()[_*(Katz-2003$*$)*_
  Define the arithmetic genus and geometric genus of a variety.
]

#question()[_*(Katz-2003$*$)*_
  What can you say about global sections of $Gamma(X,omega)$?  Sections of $H^1 (X,O)$?
]

#question()[_*(Katz-2003$*$)*_
  What is the genus of $y^2 = x^11 - 1$?  How about $y^2 = f(x)$ with $f(x)$ of odd degree and distinct roots? Give the general genus formula for that curve
]

#question()[_*(Katz-2003$*$)*_
  Talk about intersection theory for a surface.
]

#question()[_*(Katz-2003$*$)*_
  Why does an elliptic curve have a cubic form in P^2?
]

#question()[_*(Katz-2003$*$)*_
  State Abel's Theorem for an elliptic curve. What about higher dimensional varieties?
]

#question()[_*(Katz-2003$*$)*_
  What does Hasse's Theorem say about the number of points on an elliptic curve over a finite field.
]

#question()[_*(Katz-2003$*$)*_
  How does this relate to the Weil Zeta Function of a projective variety? What does this zeta function look like for an elliptic curve? What does it look like for P^n?
  
  (*Hint:* Identical Denominator)
]

#question()[_*(Katz-2003$*$)*_
  Where does the coefficient a_p come from in the elliptic curve's Zeta function?]

#question()[_*(Katz-2003$*$)*_
  Suppose that you have a large finite set of equations over a finite field and the number of points on the resulting variety over $FF_(q^n)$ for all n. Further suppose that you know that the resulting variety is a hypersurface. How might one determine the genus of this hypersurface?
  
  (Hint: Look at the numerator of some zeta function.)
]

#question()[_*(Katz-2003$*$)*_
  Why does an elliptic curve have a cubic form in P^2?
]


#question()[*_(Ellenberg-2005)_*
  Describe the Jacobian of a curve.
]

#question()[*_(Ellenberg-2005)_*
  What's a sheaf? What's a morphism of schemes? What's the push-forward? pull-back? What's a quasi-coherent sheaf? coherent sheaf?
]
#question()[*_(Ellenberg-2005)_*
  Suppose F is coherent on Y when is the push-forward of F coherent on X?
]
#question()[*_(Ellenberg-2005)_*
  What's the geometric reason a map is called finite? Give a map that is quasi-finite but not finite.
]
#question()[*_(Ellenberg-2005)_*
  Can you show that all plane conics are birational to a line?
]
#question()[*_(Ellenberg-2005)_*
  If I draw N points in the plane, can you tell me if there's a conic that goes through them?
]

#question()[*_(Ellenberg-2005)_*
  Tell me about the analogy of the class group for function fields over F_p?
]

#question()[*_(Pandharipande-2003)_*
  What do you know about vector bundles on $PP^1$
]

#question()[*_(Pandharipande-2003)_*
  What are all line bundles on \P^2? ( i had to prove that any line bundle on \P^2 is $\sO(n)$ for some $n$.
]

#question()[*_(Pandharipande-2003)_*
  Is the tangent bundle of \P^2 a direct sum of line bundles?
]

#question()[*_(Pandharipande-2003)_*
  Do you know what are chern classes? calculate the chern classes of tangent bundle of \P^2.
]

#question()[*_(Pandharipande-2003)_*
  Is it possible to have a family, parametrized by \C, of rank 2 vector bundles on \P^1 which is trivial at every point of \C except the origin?
]

#question()[*_(Pandharipande-2003)_*
  What do you know of global sections of these vector bundles?
]

#question()[*_(Katz-1997$*$)_*
  Define an algebraic group. Give some examples. Which of them are rational varieties? Prove it.
]

#question()[*_(Katz-1997$*$)_*
  Define the algebraic group O(n) as xx^t=1.  Give a more intrinsic definition of this, via nondegenerate symmetric bilinear forms.  Give intrinsic definitions of Sp, U, etc. in this way.  Which ones are connected?
]

#question()[*_(Shou-Wu-2025)_*
  What is an algebraic curve? Give the modern smooth projective definition.
]

#question()[*_(Shou-Wu-2025)_*
  What are genus zero curves?
]

#question()[*_(Shou-Wu-2025)_*
  What is $"Aut"(PP^1)$?
]

#question()[*_(Shou-Wu-2025)_*
  What are the line bundles on elliptic curves? Why are their group laws algebraic? What breaks in genus 2?
]

#question()[*_(Venkatesh-2025)_*
  Pick your favorite curve, not genus 1 or 0 and compute its genus.
]

#question()[*_(Kollar-2017)_*
  Define an affine scheme. How do you tell if a scheme is affine? How else can you show that a scheme isn't affine? Why isn't P^n affine? There are lots of ways, give some.
]

#question()[*_(Kollar-2017)_*
  Why doesn't P^n have any global sections other than k?
]

#question()[*_(Kollar-2017)_*
  What nice properties does P^n have? If you take the first projection X x P^n --> X, what can you say about it?
]

#question()[*_(Kollar-2017)_*
  What can you say about the image of a closed subset?
]

#question()[*_(Kollar-2017)_*
  Can you prove that the structure morphism $P^n --> "Spec" k$ is proper?
]

#question()[*_(Kollar-2017)_*
  What can you say about the curve $y^3=x^6+1$? Assume the characteristic is not 2 or 3. Compute the genus. What would a topologist see in this, and how do you see this directly from the equation?
]

#question()[*_(Kollar-2006)_*
  Talk about lines contained in hypersurfaces of degree 3 in the projective space. Why is this a variety?
]

#question()[*_(de Jong-1996)_*
  Define an affine scheme. Define a variety. What additional conditions would some people impose?
]

#question()[*_(de Jong-1996)_*
  Can you give an irreducible variety that is not absolutely irreducible?
]

#question()[*_(de Jong-1996)_*
  Define the genus of a (projective) curve.
]

#question()[*_(de Jong-1996)_*
  Give another definition of genus.
]

#question()[*_(de Jong-1996)_*
  Define the Hilbert polynomial.
]

#question()[*_(Katz-1996)_*
  What is a differential? What can you say about this sheaf?
]

#question()[*_(Katz-1996)_*
  Can you state Serre duality? Can you state it for curves? What can you say about the residues of a 1-form on a curve?
]

#question()[*_(Katz-1996)_*
  How would you compute H^1 of a curve? What's the fewest open sets you can use? Describe Serre duality in terms of this cover.
]

#question()[*_(Katz-1996)_*
  Do you know what the Cayley transform is?
]

#question()[*_(Katz-1996)_*
  How can you show that a curve is not rational? In fact, if you have a rational map between two curves, what can you say? Now what about higher-dimensional varieties? Can a rational variety map to a curve of positive genus?
]

#question()[*_(Katz-1996)_*
  Define an elliptic curve. What is Weierstrass form?  What is special about it? What is a flex?  How many flexes are there? Can a line touch an elliptic curve to order higher than 3? How would I tell whether a given point has a given finite order. Prove that the curve (with the geometric group law) is isomorphic to Pic^0.
]

#question()[*_(Pandharipande-2002)_*
  Can P^1 map to a curve of higher genus?
]

#question()[*_(Pandharipande-2002)_*
  What about curve of genus g1 map to curve of g2 ? When can you have g1=g2?
]

#question()[*_(Pandharipande-2002)_*
  Compute the cohomology for the normal bundle of the rational normal curve in P^3.
]

#question()[*_(Pandharipande-2002)_*
  Let's talk about a curve which is a complete intersection of $PP^n$. Given the degrees, what's the genus?
]

#question()[*_(Pandharipande-2002)_*
  Let's think about surfaces. How many types of quadric surfaces in P^3 do you have?
]

#question()[*_(Pandharipande-2002)_*
  Is the quadric cone rational? Y. What about a cubic hypersurface in P^3. 
]

#question()[*_(Pandharipande-2002)_*
  For a curve of genus g, what's the smallest d such that any line bundle of degree g >= d has some global section?
]

#question()[*_(Kollar-2008)_*
  Calculate the genus of plane curve defined by y^3=x^6-1.
]

#question()[*_(Kollar-2014)_*
  Suppose X is a scheme over a field K, L is a field extension of K, then what can you say about cohomology of coherent sheaves on X and on X\times_K L?
]

#question()[*_(Kollar-2014)_*
  State the semi-continuity theorem. Do you know an example that the dimension of cohomology groups jumps? 
]

#question()[*_(Kollar-2014)_*
  Consider an elliptic curve, what is the cohomology for a divisor?
]

#question()[*_(Kollar-2014)_*
  Define a Fano variety. What is your favorite Fano variety? Is the blow up of a point in P^3 Fano? 
]

#question()[*_(Kollar-2014)_*
  Let's look at the intersection of anti-canonical divisor with curves. What about P^3 blowing up two points?
]

#question()[*_(Kollar-2014)_*
  Do you know some properties of rational curves in Fano varieties? Can you prove some result?
]

#question()[*_(Kollar-2019)_*
  Study smooth curves of genus 0 (over a field that is not necessarily algebraically closed).
]

#question()[*_(Sawin-$???$)_*
  Write down a genus 25 curve. (Hyperelliptic $y^2=f(x)$ where f is degree 51 or 52)
]

#question()[*_(Bhargava-$???$)_*
  What happens if you treat hyperelliptic $y^2=f(x)$ where f is degree 51 or 52 as a plane curve? How would you resolve it?
]

#question()[*_(Bhargava-$???$)_*
  Is every genus g curve a plane curve? What if g is already a triangle number? Take a small g, What’s the dimension of $M_{g,n}$?
]

#question()[*_(Bhargava-$???$)_*
  Take g=3. Why are all genus 3 curves not plane curves?
]

#question()[*_(Sawin-$???$)_*
  What does the degree-genus formula compute if it's not smooth?
]

#question()[*_(Sawin-$???$)_*
  Say you have a curve C and a double curve 2C. You would expect the Euler characteristic of 2C to be double that of C, but this is not the case. Why?
]

#question()[*_(Sawin-$???$)_*
  Compute the cohomology of the cotangent sheaf of P^n. Why is the canonical bundle O(-n-1)?
]

We stopped at MICHAEL MCBREEN ALGEBRAIC GEOMETRY QUALS

#question()[*_(Kollar-2019)_*
  
]

#question()[*_(Kollar-2019)_*
  
]

#question()[*_(Kollar-2019)_*
  
]

#question()[*_(Kollar-2019)_*
  
]

= Notes

Careful with Shonwu, pretty recent

A lot of Harthstone references in Katz

A lot of Hurwtiz formula

A lot of Harthsone and Rising Sea