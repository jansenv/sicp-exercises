#lang simply-scheme

(define (make-rat n d)
  (cond ((and (< n 0) (< d 0)) (cons (- n) (- d)))
        ((< d 0) (cons (- n) (- d)))
        (else (cons n d))))

(define one-half (make-rat 1 2))

(car one-half)
(cdr one-half)

(define negative-one-third (make-rat -1 3))
(car negative-one-third)
(cdr negative-one-third)

(define positive-one-fourth (make-rat -1 -4))
(car positive-one-fourth)
(cdr positive-one-fourth)

(define negative-one-fifth (make-rat 1 -5))
(car negative-one-fifth)
(cdr negative-one-fifth)