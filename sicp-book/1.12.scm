#lang racket
(define (pascal rowNum colNum)
  (if (or (= colNum 1) (= colNum rowNum))
      1
      (+ (pascal (- rowNum 1) (- colNum 1)) (pascal (- rowNum 1) colNum))))

(pascal 1 1)
(pascal 2 2)
(pascal 3 2)
(pascal 4 2)
(pascal 5 2)
(pascal 5 3)