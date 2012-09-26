#def isDivisible(x, y):
  #if x % y == 0:
    #return True
  #return False

answer = 20

while(True):
  for i in range(1, 20):
    isAnswer = True
    if answer % i != 0:
      answer += 20
      isAnswer = False
      break
  if isAnswer:
    print answer
    break
