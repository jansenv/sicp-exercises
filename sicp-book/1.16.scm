#lang racket

(define (iter-fast-expt b n)
  (define (iter N B A)
    (cond ((= 0 N) A)
          ((even? N) (iter (/ N 2) (square B) A))
          (else (iter (- N 1) B (* B A)))))
  (iter n b 1))

(define (square a) (* a a))