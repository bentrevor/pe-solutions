
prev1 = 1
prev2 = 1
curr = 2
total = 0

while curr < 4000000:
  if curr % 2 == 0:
    total += curr
  prev1 = prev2
  prev2 = curr
  curr = prev1 + prev2

print total
