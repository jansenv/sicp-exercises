#lang simply-scheme

;1.31a

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (identity x) x)

(define (factorial n)
  (product identity 1 (lambda (x) (+ x 1)) n))

(define (pi-approx n)
  (define (pi-term k)
    (/ (* 4 k k)
       (- (* 4 k k) 1)))
  (* 2 (product pi-term 1 (lambda (x) (+ x 1)) n)))