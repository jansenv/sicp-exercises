#lang simply-scheme

(define (infinite-recursion) (infinite-recursion))

; probably a dumb way to do this but we should be able to prove 'or' is a special form if it doesn't get stuck in a recursive loop
; (because it stops after the first condition and thus never triggers the second one)
(or #t (infinite-recursion))

; 'and' is similar, it should exit as soon as it sees 'false' if it's a special form, but will break on the recursion if not
(and #f (infinite-recursion))

; why advantageous to treat 'or' as a special form?
; my guess: evaluating arguments one at a time could be more performance friendly, for example if there are significant amounts (think hundreds) of 'or' cases.

; why advantageous to treat 'or' as ordinary?
; not sure, but i am imagining a scenario in which you are dealing with multiple variables that could change over time.
; maybe having one 'constant' that you run an 'or' check against ensures a good failsafe in this kind of scenario?