#lang scheme

;;(cubo numero)
;;Esta funcion calcula el cubo de un numero

(define (cubo num) 
  (* num num num)
  )

(define (sumar-cubos ls)
  (let f[(x ls) (suma 0)]
    (cond
      [(null? x) ;;condicion de termino
       suma
       ]
      [else   ;;recursion
       (f (cdr x) (+ suma (cubo (car x))))
       ]
      )
    )
  )