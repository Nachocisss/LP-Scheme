#lang scheme

(define (logiceval expr)
  (cond
    [(equal? (car expr) 'Y)
     (cond
       [(and (boolean? (cadr expr)) (boolean? (caddr expr)))
        (and (cadr expr) (caddr expr))
        ]
       [(and (not (boolean? (cadr expr))) (boolean? (caddr expr)))
        (and (logiceval (cadr expr)) (caddr expr))
        ]
       [(and (boolean? (cadr expr)) (not (boolean? (caddr expr))))
        (and (cadr expr) (logiceval (caddr expr)))
        ]
       [else
        (and (logiceval (cadr expr)) (logiceval (caddr expr)))
        ]
       )
     ]
    [(equal? (car expr) 'O)
     (cond
       [(and (boolean? (cadr expr)) (boolean? (caddr expr)))
        (or (cadr expr) (caddr expr))
        ]
       [(and (not (boolean? (cadr expr))) (boolean? (caddr expr)))
        (or (logiceval (cadr expr)) (caddr expr))
        ]
       [(and (boolean? (cadr expr)) (not (boolean? (caddr expr))))
        (or (cadr expr) (logiceval (caddr expr)))
        ]
       [else
        (or (logiceval (cadr expr)) (logiceval (caddr expr)))
        ]
       )
     ]
    [(equal? (car expr) 'OEX)
     (cond
       [(and (boolean? (cadr expr)) (boolean? (caddr expr)))
        (xor (cadr expr) (caddr expr))
        ]
       [(and (not (boolean? (cadr expr))) (boolean? (caddr expr)))
        (xor (logiceval (cadr expr)) (caddr expr))
        ]
       [(and (boolean? (cadr expr)) (not (boolean? (caddr expr))))
        (xor (cadr expr) (logiceval (caddr expr)))
        ]
       [else
        (xor (logiceval (cadr expr)) (logiceval (caddr expr)))
        ]
       )
     ]
    [(equal? (car expr) 'NO)
     (cond
       [(boolean? (cadr expr))
        (not (cadr expr))
        ]
       [else
        (not (logiceval (cadr expr)))
        ]
       )
     ]
    )
  )