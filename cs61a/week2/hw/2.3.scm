#lang simply-scheme

(define (every term sent)
  (if (empty? sent)
      '()
      (se (term (first sent))
          (every term (bf sent)))))

(define (keep pred sent)
  (cond ((empty? sent) '())
        ((pred (first sent)) (se (first sent) (keep pred (bf sent))) )
        (else (keep pred (bf sent))) ))