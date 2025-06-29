#lang simply-scheme

(define (every term sent)
  (if (empty? sent)
      '()
      (se (term (first sent))
          (every term (bf sent)))))