def onesPlace(x):
  ones = x % 10
  if ones == 0:
    return 0
  elif ones in [1, 2, 6]:
    return 3
  elif ones in [4, 5, 9]:
    return 4
  elif ones in [3, 7, 8]:
    return 5

def tensPlace(x):
  tens = (x / 10) % 10
  ones = x % 10
  if tens == 0:
    return 0
  if tens == 1:
    if ones in [0, 1, 2, 3, 5, 8]:
      return 3
    elif ones in [4, 6, 7, 9]:
      return 4
  elif tens in [4, 5, 6]:
    return 5
  elif tens in [2, 3, 8, 9]:
    return 6
  elif tens == 7:
    return 7
    
def hundredsPlace(x):
  hundreds = x / 100
  tens = (x / 10) % 10
  ones = x % 10
  if hundreds in [1, 2, 6]:
    return 10
  elif hundreds in [4, 5, 9]:
    return 11
  elif hundreds in [3, 7, 8]:
    return 12 
  
  
  
answer = 0
  
for i in range(1, 10):
  answer += onesPlace(i)
  
for j in range(10, 100):
  answer += tensPlace(j) + onesPlace(j)


for k in range(100, 1000):
  answer += hundredsPlace(k) 
  answer += tensPlace(k)
  answer += onesPlace(k)
  print k
  if list(str(k))[1] == 0 and list(str(k))[2] == 0:
    answer += 3
    
print answer

  

  
  
  