#lang simply-scheme

;3
(define (greatest-two-sum-of-squares a b c)
  (cond ((<= a b c) (sum-of-squares b c))
        ((<= b a c) (sum-of-squares a c))
        (else (sum-of-squares a b))))

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

;4
(define (dupls-removed sent)
  (cond ((empty? sent) '())
	((member? (first sent) (bf sent))
	 (dupls-removed (bf sent)))
	(else (sentence (first sent) (dupls-removed (bf sent))))))