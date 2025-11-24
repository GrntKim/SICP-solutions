; Similar to exercise 1.05, this will cause an infinite loop.
; The default 'if' special form does not evaluate its clauses unless the condition is met, 
; but the new-if's clauses will be evaluated thus makes an infinite loop possible.

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
;Value: new-if

