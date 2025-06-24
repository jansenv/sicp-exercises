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

;1.32a

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (inc x) (+ 1 x))

(accumulate + 0 identity 1 inc 10) ;sum nums from 1-10
(accumulate * 1 identity 1 inc 10) ;multiply nums from 1-10