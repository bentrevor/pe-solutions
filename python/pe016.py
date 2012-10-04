# What is the sum of the digits of the number 21000?

def sumOfDigits(x):
  answer = 0
  while(x > 0):
    answer += x % 10
    x /= 10
  return answer
  
print sumOfDigits(2**1000)
    