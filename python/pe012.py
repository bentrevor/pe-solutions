# What is the value of the first triangle number to have over five hundred divisors?

import math

def numDivisors(x):
  divisors = 0
  for i in range(1, int(math.sqrt(x)) + 1):
    if x % i == 0:
      divisors += 2
  return divisors
  
lastTriNum = 0
triNum = 0
  
for j in range(100000):
  triNum = lastTriNum + j
  lastTriNum += j
  if numDivisors(triNum) > 500:
    print triNum
    break