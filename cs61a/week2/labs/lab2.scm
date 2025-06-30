#lang simply-scheme

;2
(define (substitute sent oldWord newWord)
  (cond ((empty? sent)'())
        ((equal? (first sent) oldWord)
         (se newWord (substitute (bf sent) oldWord newWord)))
        (else
         (se (first sent) (substitute (bf sent) oldWord newWord)))))

;3
;g has one argument and the type returned is an integer

;4
(define f 5)
f
(define (f1) 42)
(f1)
(define (f2 x) (* x 2))
(f2 3)
(define (f3) (lambda () 'test))
((f3))
(define (f4) (lambda () (lambda (x) (+ x 1))))
(((f4)) 3)

;5
(define (t f)
  (lambda (x) (f (f (f x)))))

;6