(define (sqrt-iter gem guess x)
  (if (gem guess x)
      guess
      (sqrt-iter gem (improve guess x) x)))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (good-enough?-improved guess x)
  (< (abs (- guess (improve guess x))) (* 0.0000000001 guess)))

(define (sqrt x)
  (sqrt-iter good-enough? 1.0 x))

(define (sqrt-improved x)
  (sqrt-iter good-enough?-improved 1.0 x))

(sqrt-improved 0.0005)
(sqrt 0.0005)

(sqrt-improved 123456789012345678901234567890123456789012345678901234)
(sqrt 123456789012345678901234567890123456789012345678901234)
