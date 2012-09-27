largest = 0
largesti = 0
  
def getCollatzNum(x):
  count = 0
  while x != 1:
    if x % 2 == 0:
      x /= 2
    else:
      x = (3 * x) + 1
    count += 1
  return count + 1
  
for i in range(1, 1000000):
  currentNum = getCollatzNum(i)
  if currentNum > largest:
    largest = currentNum
    largesti = i
  
print largesti
    
    
    
    
    