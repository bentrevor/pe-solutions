answer = 1
lastNumber = 1

for i in range(1, 500):
  increase = ((i + 3) / 4) * 2
  lastNumber += increase
  answer += lastNumber
  
print answer
print lastNumber