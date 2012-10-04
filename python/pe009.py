# Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000.

def isPythTriplet(a, b, c):
  if c**2 == a**2 + b**2:
    return True
  return False
  
def correctSum(a, b, c):
  if a + b + c == 1000:
    return True
  return False

for c in range(5, 500):
  for b in range(3, c):
    for a in range(1, b):
      if correctSum(a, b, c) and isPythTriplet(a, b, c):
	print a * b * c