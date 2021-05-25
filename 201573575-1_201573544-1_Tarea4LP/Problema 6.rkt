#lang scheme

;;(factorial numero)
;;Esta funcion calcula el factorial de un numero
(define factorial
  (lambda (n)
    (let fact ((i n)(a 1))
      (if (= i 0)
          a
          (fact (- i 1) (* a i)
                )
          )
      )
    )
  )
          
(define (binomcola a b n) 
  (let f[(x a)(y b)(n n)(i 0)(suma 0)]
    (cond
      [(< n i)
       suma
       ]
      [else
       (f x y n (+ 1 i) (+ suma (* (/ (factorial n) (* (factorial i) (factorial (- n i)))) (* (expt x (- n i)) (expt y i)))))
       ]
      )
    )
  )
  
(define (binomsimple x y n)
  (cond
    [(= 0 n)
     1
     ]
    [else
     (let f[(i n)]
       (if (= i -1)
           0
           (+ (* (/ (factorial n) (* (factorial i) (factorial (- n i)))) (* (expt x (- n i)) (expt y i))) (f(- i 1)))
           )
       )
     ]
    )
  )
  
              

  

