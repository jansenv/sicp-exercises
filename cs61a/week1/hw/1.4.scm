#lang simply-scheme

(define (ordered? nums)
  (if (empty? (bf nums))
      'true
      (if (> (first nums) (first (bf nums)))
          'false
          (ordered? (bf nums)))))