(define (square a) (* a a))
;Value: square

(define (f a b c)
  (- (+ (square a) (square b) (square c))
     (square (if (> a b)
		 (if (> b c)
		     c
		     b)
		 (if (> a c)
		     c
		     a)))))
;Value: f

