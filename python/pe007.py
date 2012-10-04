# Find the 10001st prime.

import math

def isPrime(x):
  for i in range(2, int(math.sqrt(x)) + 1):
    if x % i == 0:
      return False
  return True
  
  
answer = 2
count = 1

while count < 10001:
  answer += 1
  if isPrime(answer):  
    count += 1

print answer