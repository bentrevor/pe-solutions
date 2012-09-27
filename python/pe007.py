import math

def isPrime(x):
  for i in range(2, int(math.sqrt(x)) + 1):
    if x % i == 0:
      return False
  return True
  
primeArray = [0]*10001
primeArray[0] = 2
answer = 3
index = 1

while primeArray[10000] == 0:
#while index < 30:
  if isPrime(answer):
    print answer
    primeArray[index] = answer
    index += 1
  answer += 1

print primeArray[10000]