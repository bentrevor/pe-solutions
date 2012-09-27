def isPalindrome(x):
  firstNum  = x / 100000 % 10
  secondNum = x / 10000  % 10
  thirdNum  = x / 1000   % 10
  fourthNum = x / 100    % 10
  fifthNum  = x / 10     % 10
  sixthNum  = x          % 10
  
  if firstNum == sixthNum and secondNum == fifthNum and thirdNum == fourthNum:
    return True
  return False
  
largest = 0

for i in range(900, 1000):
  for j in range(900, 1000):
    prod = i * j
    if isPalindrome(prod):
      largest = max(prod, largest)
      
print largest
