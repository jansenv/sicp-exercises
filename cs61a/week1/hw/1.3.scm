#lang simply-scheme

(define (switch x)
  (if (empty? x)
      '()
      (sentence (replace-first (first x))
                (switch-rest (bf x)))))

(define (switch-rest x)
  (if (empty? x)
      '()
      (sentence (replace (first x))
                (switch-rest (bf x)))))

; special case at the start
(define (replace-first word)
  (cond ((equal? word 'you) 'i)
        (else word)))

; general case
(define (replace word)            
  (cond ((equal? word 'i) 'you)
        ((equal? word 'me) 'you)
        ((equal? word 'you) 'me) 
        (else word)))