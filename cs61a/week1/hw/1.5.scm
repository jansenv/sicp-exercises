#lang simply-scheme

(define (ends-e words)
  (if (empty? words)
      '()
      (if (ends-in-e? (first words))
          (sentence (first words) (ends-e (bf words)))
          (ends-e (bf words)))))

(define (ends-in-e? word)
  (equal? (last word) 'e))