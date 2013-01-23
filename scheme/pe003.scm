#lang racket

(define (isprime-iter x counter)
  (if (> counter (/ x 2))
      true
      (if (= 0 (modulo x counter))
          false
          (isprime-iter x (+ counter 1)))))

(define (isprime x)
  (isprime-iter x 2))

(define (lpf bignumber counter)
  (if (and (= 0 (modulo bignumber counter)) (isprime (/ bignumber counter)))
      (/ bignumber counter)
      (lpf bignumber (+ counter 1))))

(print (lpf 600851475143 2))


