#lang racket

;;Assuming again double and halve are built-in to the language

(define (double x) (+ x x))
(define (halve x) (floor (/ x 2)))

(define (* a b)
  (define (iter n a b)
    (cond ((= b 0) n)
          ((even? b) (iter n (double a) (halve b)))
          (else (iter (+ n a) a (- b 1)))))
  (iter 0 a b))