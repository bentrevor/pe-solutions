# Calculate the sum of all the primes below two million.

import math

def isPrime(x):
  for i in range (2, int(math.sqrt(x)) + 1):
    if x % i == 0:
      return False
  return True

sum = 0

for i in range(2, 2000000):
  if isPrime(i):
    sum += i
    
print sum