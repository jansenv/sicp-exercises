#lang simply-scheme

(define (squares x)
  (if (empty? x)
      '()
      (sentence (square (first x))
                (squares (bf x)))))

(define (square x)
  (* x x))