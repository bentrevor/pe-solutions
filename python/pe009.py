def isPythTriplet(a, b, c):
  if c**2 == a**2 + b**2:
    return True
  return False
  
def correctSum(a, b, c):
  if a + b + c == 1000:
    return True
  return False

for c in range(5, 50):
  for b in range(3, c):
    for a in range(1, b):
      #print "{0}, {1}, {2}".format(a, b, c)
      #if correctSum(a, b, c) and isPythTriplet(a, b, c):
      if isPythTriplet(a, b, c):
	print "{0}, {1}, {2}".format(a, b, c)
	#print a * b * c