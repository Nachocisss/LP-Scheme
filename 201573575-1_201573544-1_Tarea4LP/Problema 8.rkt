#lang scheme

(define (mapear fx)
  (lambda (ls)
    (let f[(x ls) (final (list))]
      (cond
        [(null? x)
         (reverse final)
         ]
        [else
         (f (cdr x) (cons (fx (car x)) final))
         ]
        )
      )
    )
  )

