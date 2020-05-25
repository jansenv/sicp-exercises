#lang racket

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

;There is no recursion going on at all in either of these examples. You can simply substitute a & b and, in the first exmaple, the counter will decrement a, add it to b, and return b incremented (unless a is 0). In example 2 it is similar except a will be decremented at the same time b is incremented, and then they are added together. I suppose these are example of linear iteration.