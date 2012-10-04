# Find the sum of digits in 100!

bigFactorial = 1

for x in range(1, 101):
  bigFactorial *= x
  
answer = 0  

for y in list(str(bigFactorial)):
  answer += int(y)
  
print answer

