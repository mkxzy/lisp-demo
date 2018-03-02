#lang sicp

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (last-pair items)
  (let ((ff (length items)))
    (cond ((= ff 0) nil)
          ((= ff 1) (car items))
          (else
           (last-pair (cdr items))))))

(last-pair (list 1 2 3))