#lang racket

(define (even-fibs fib1 fib2 total)
  (if (> fib1 4000000) 
    total
    (even-fibs fib2 (+ fib1 fib2) (if (= 0 (modulo fib2 2))
                                        (+ total fib2) 
                                        total)))

(print (even-fibs 1 1 0))