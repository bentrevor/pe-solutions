module Pe001 where

multOfThree x = if x `mod` 3 == 0 then True else False

multOfFive x = if x `mod` 5 == 0 then True else False

multOfEither x
  | multOfFive x  = True
  | multOfThree x = True
  | otherwise     = False

sumOfMultiples x = sum [ xs | xs <- [1..x - 1], multOfThree xs || multOfFive xs ]
