# Find the largest palindrome made from the product of two 3-digit numbers.

# I'm assuming the answer will be six digits since its upper bound is 
# 999 * 999 = 998001
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

# I'm assuming both factors will be greater than 900
for i in range(900, 1000):
  for j in range(900, 1000):
    prod = i * j
    if isPalindrome(prod):
      largest = max(prod, largest)
      
print largest
