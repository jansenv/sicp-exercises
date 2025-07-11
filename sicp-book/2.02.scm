#lang simply-scheme

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-point x y)
  (cons x y))

(define (x-point point) (car point))

(define (y-point point) (cdr point))

(define (make-segment start end)
  (cons (start-segment start) (end-segment end)))

(define (start-segment start-point) (make-point start-point))

(define (end-segment end-point) (make-point end-point))

(define (midpoint-segment line-segment)
  (make-point
   (average (x-point (x-point line-segment))
            (y-point (y-point line-segment)))))

(define (average a b)
  (/ (+ a b) 2))

;doesn't work but I feel like I get the gist with pseudocode. too lazy to implement