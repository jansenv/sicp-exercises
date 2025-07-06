#lang simply-scheme

(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))

(f-recursive 5)

(define (f-iter n)
  (if (< n 3)
      n
      (f-iterator 2 1 0 n)))

(define (f-iterator a b c count)
  (if (< count 3)
      a
      (f-iterator (+ a (* 2 b) (* 3 c))
                  a
                  b
                  (- count 1))))

(f-iter 5)