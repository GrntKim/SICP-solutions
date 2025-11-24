(define (p) (p))
;Value: p


(define (test x y)
  (if (= x 0)
      0 
      y))
;Value: test

(test 0 (p))
; infinite-loop

; (test 0 (p))
; (test 0 (p))
; (test 0 (p))
; (test 0 (p))
; ...
; Scheme evaluates parametets first. Evaluating (p) will cause an infinite loop

