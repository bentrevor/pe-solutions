# Find the largest prime factor of the composite number 600851475143.

import math

bigNum = 600851475143

def isFactor(x, y):
  if y % x == 0:
    return True
  return False
  
def isPrime(x):
  for y in range(2, int(math.sqrt(x)) + 1):
    if isFactor(y, x):
      return False
  return True
  
# count down so the first prime found is the biggest
for x in range(int(math.sqrt(bigNum)), 2, -1):
  if isFactor(x, bigNum) and isPrime(x):
    print x
    break
    
