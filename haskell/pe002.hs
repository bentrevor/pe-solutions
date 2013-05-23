module Pe002 where

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

evenFibs = [ xs | xs <- fibs, xs `mod` 2 == 0 ]

evensUpTo limit = takeWhile (< limit) evenFibs

