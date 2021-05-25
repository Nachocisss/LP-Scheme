#lang scheme

(define (impar fx)
  (let [(contador 0)]
    (lambda (n)
      (set! contador (+ contador 1))
      (cond
        [(even? contador)
         n
         ]
        [else
         (fx n)
         ]
        )
      )
    )
  )

