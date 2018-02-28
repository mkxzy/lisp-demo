#lang sicp

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (cube x) (* x x x))
(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum (lambda (x) (* x x x)) a (lambda (x) (+ x 1)) b))

(sum-cubes 1 2)