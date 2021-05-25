#lang scheme

(define (compresor ls)
  (let f [(cont 1) (x ls) (final '())]
    (cond
      [(= (length x) 1);;condicion de termino
       (if (null? final)
           (list (list cont (car x)))
           (reverse (cons (list cont (car x)) final))
           )
       ]
      [(not (number? (car x)));verificar si hay listas en el primer termino
       (f 1 (cdr x) (cons (compresor (car x)) final))
       ]
      [(not (number? (car (cdr x))));verificar si hay listas en el segundo termino
       (f 1 (cddr x) (cons (compresor (car (cdr x))) (cons (list cont (car x)) final)))
       ]
      [(= (car x) (car (cdr x)));verificar si son iguales el pirmer y segundo numero
       (f (+ cont 1) (cdr x) final)
       ]
      [else ;si son distintos el primer y segundo numero
       (if (null? final)
           (f 1 (cdr x) (list (list cont (car x))))
           (f 1 (cdr x) (cons (list cont (car x)) final))
           )
       ]
      )
    )
  )
