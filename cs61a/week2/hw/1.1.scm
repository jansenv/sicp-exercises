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

;1.33

(define (filtered-accumulate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((filter a)
         (combiner (term a)
                   (filtered-accumulate filter combiner null-value term (next a) next b)))
        (else
         (filtered-accumulate filter combiner null-value term (next a) next b))))

(define (prime? n)
  (define (has-divisor? a)
    (cond ((> (* a a) n) #f)
          ((= (remainder n a) 0) #t)
          (else (has-divisor? (+ a 1)))))
  (cond ((< n 2) #f)
        (else (not (has-divisor? 2)))))

(define (square x) (* x x))

(filtered-accumulate prime? + 0 square 1 inc 10) ;sum prime squares 1-10
;(filtered-accumulate prime? * 0 square i inc n) ;product of all prime integers i < n

;1.40
;?

;1.41
(define (double x)
  (lambda (y) (x (x y))))

(((double (double double)) inc) 5) ;21?

;1.43
(define (compose f g)
  (lambda (x) (f (g x))))

((compose square inc) 6)

(define (rptd f g)
  (compose square square))

((rptd square 2) 5) ;625