#lang simply-scheme

; we have to rememember 'if' and 'cond' are special forms, 'new-if' is not going to be one so it will have to evaluate every argument that is input instead of stopping on the first true predicate.
; this makes it vulnerable to getting stuck in a recursive loop, so the program will likely crash.