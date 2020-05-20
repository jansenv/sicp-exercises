#lang racket

; In Scheme, conditionals such as if and cond are SPECIAL FORMS. This is in contrast to procedures, in this case new-if, which will be run in applicative order. In the conditional special forms the predicate is evaluated first, and then the interpreter either evaluates the consequent or the alternative.

; However what we are using (the 'new if') is just a regular procedure. In applicative order this means that it has to evaluate all of the arguments before it runs. In essence it is infinitely recursive, because the two arguments it has to evaluate are 'guess' and the '(sqr-iter (improve guess x) x)))'. The latter argument is called every time new-if is called, resulting in an infinite loop.