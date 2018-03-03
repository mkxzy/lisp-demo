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

(define (trim-last items)
  (if (= 1 (length items))
      nil
      (cons (car items) (trim-last (cdr items)))))

(define (reverse items)
  (if (null? items)
      nil
      (cons (last-pair items) (reverse (trim-last items)))))

(reverse (list 1 2 5 15))