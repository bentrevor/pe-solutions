#lang racket

(define (isprime x counter)
  (if (> counter (/ x 2))
      true
      (if (= 0 (modulo x counter))
          false
          (isprime x (+ counter 1)))))

(define (lpf bignumber counter)
  (if (and (= 0 (modulo bignumber counter)) (isprime (/ bignumber counter) 2))
      (/ bignumber counter)
      (lpf bignumber (+ counter 1))))

(print (lpf 600851475143 2))


