#lang sicp

;;In this case it seems that the 'if' statement makes it so that 'b' is SUBTRACTED from 'a' IF 'b' is a negative number, however 'b' will be ADDED to 'a' IF b is positive.

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;;test
(a-plus-abs-b 1 2)
(a-plus-abs-b 1 0)
(a-plus-abs-b 5 -25)
(a-plus-abs-b -5 -25)
(a-plus-abs-b -5 25)