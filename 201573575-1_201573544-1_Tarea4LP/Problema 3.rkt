#lang scheme

;;(aux arbol)
;;Esta funcion suma los pesos del arbol y comprueba si
;;estos tienen el mismo peso, retornando la suma o un
;; 0 si estos no cumplen la regla

(define (aux ar)
  (let f[(izq (cadr ar)) (der (caddr ar)) (cont (car ar))]
    (cond
      [(and (null? izq) (null? der))
       cont
       ]
      [(and (not (null? izq)) (not (null? der)))
       (cond
         [(= (f (cadr izq) (caddr izq) (car izq)) (f (cadr der) (caddr der) (car der)))
          (+ cont (+ (f(cadr izq) (caddr izq) (car izq)) (f (cadr der) (caddr der) (car der))))
          ]
         [else
          -1
          ]
         )
       ]
      [else
       -1
       ]
      )
    )
  )

(define (pesomovil ar)
  (let [(x (aux ar))]
    (if (= x -1)
        (list)
        x
        )
    )
  )
