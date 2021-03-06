#lang racket

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)

(A 1 0)

(A 2 4)

(A 3 3)

; (f n) = 2n || 0 if n = 0
; (g n) = 2^n || 0 if n = 0
; (h n) = 2^2^.... (n - 1 times) for n > 1 || 2 if n = 1 || 0 if n = 0