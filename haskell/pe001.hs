module Pe001 where

multOfThree :: Int -> Bool
multOfThree x = x `mod` 3 == 0

multOfFive :: Int -> Bool
multOfFive x = x `mod` 5 == 0

multOfEither :: Int -> Bool
multOfEither x = multOfFive x || multOfThree x

sumOfMultiples :: Int -> Int
sumOfMultiples x = sum [ xs | xs <- [1..x - 1], multOfEither xs ]
