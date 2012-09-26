#def isPalindrome(x):
  #numString = str(x)
  #if x < 10 or x % 10 == x / 10:
    #return True
  
def fact(x):
  if x == 1:
    return 1
  return fact(x - 1) * x
  
print fact(1)
print fact(2)
print fact(3)
print fact(4)
print fact(5)
print fact(6)
print fact(7)
print fact(8)
print fact(9)
print fact(10)
