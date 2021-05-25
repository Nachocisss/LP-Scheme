#lang scheme


(define (goferkcola n)
  (if (zero? n)
      0
      (let f[(x 1) (y 0) (suma 1)]
        (cond
          [(= x n)
           suma
           ]
          [else
           (f (+ x 1) suma (+ (- suma y) (+ x 1)))
           ] 
          )
        ) 
      )
  )

(define (goferkiter n)
  (if (zero? n)
      0
      (do
          [
           (i 1 (+ i 1))
           (suma 1 (+ (- suma x) (+ i 1)))
           (x 0 suma)
           ]
        ((= i n) suma)
        )
      )
  )