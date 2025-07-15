#lang simply-scheme

(define (cdr z)
  (z (lambda (p q) q)))