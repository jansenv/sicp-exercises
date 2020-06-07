#lang sicp

;;In applicative-order the interpreter will get stuck evaluating 'p' of the test expression to infinity because 'p' is just another combo.

;;In normal-order the expression will return 0 because it will not be necessary to evaluate 'p'. The interpreter simply sees that 'x' is 0 and that is all that's needed to evaluate the expression.