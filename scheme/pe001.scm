#lang racket

(define (sum-iter total counter)
  (if (>= counter 1000)
      total
      (sum-iter (if (or (= 0 (modulo counter 5)) (= 0 (modulo counter 3)))
                    (+ total counter)
                    total)
                (+ counter 1))))

(print (sum-iter 0 1))
       