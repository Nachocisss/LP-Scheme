#lang scheme

(define (merge ls1 ls2)
  (let f[(x ls1) (y ls2) (final (list))]
    (cond
      [(and (null? x) (null? y))
       final
       ]
      [(null? x)
       (append final y)
       ]
      [(null? y)
       (append final x)
       ]
      [(> (car x) (car y))
       (f x (cdr y) (append final (list (car y))))
       ]
      [(> (car y) (car x))
       (f (cdr x) y (append final (list (car x)) ))
       ]
      [(= (car x) (car y))
       (f (cdr x) (cdr y) (append final (list (car x) (car y)) ))
       ]
      )
    )
  )


      
    
  