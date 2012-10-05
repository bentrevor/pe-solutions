# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral?

answer = 1
lastNumber = 1

for i in range(1, 500):
  increase = ((i + 3) / 4) * 2
  lastNumber += increase
  answer += lastNumber
  
print answer
print lastNumber