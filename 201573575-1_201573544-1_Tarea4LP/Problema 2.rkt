#lang scheme

;;(encontrar lista constante)
;;Esta funcion encuentra en una lista si existe la constante
;;y el valor o 0 si no lo encuentra

(define (encontrar ls c) ;ve si se encuentra un termino en la lista
  (let f [(x ls)]
    (cond
      [(null? x) ;condicion de termino
       0
       ]
      [(eqv? (caar x) c) ;si son equivalentes los terminos retorna
       (cdar x)
       ]
      [else ;vacia la lista
       (f (cdr x))
       ]
      )
    )
  )

(define (calculo cost exp)
  (let f [(x exp) (suma 0)]
    (cond
      [(null? x);condicion de termino
       suma
       ]
      [else ;recursion
       (f (cdr x) (+ suma (encontrar cost (car x))))
       ]
      )
    )
  )