(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;Value: a-plus-abs-b

(a-plus-abs-b 3 -4)
;Value: 7

; ((if (> -4 0) + -) 3 -4)
; (- 3 -4)
; 7