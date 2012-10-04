# By considering the terms in the Fibonacci sequence whose values do not exceed 
# four million, find the sum of the even-valued terms.

# first few Fibonacci numbers
fib1 = 1
fib2 = 1
current = 2

total = 0

while current < 4000000:
  if current % 2 == 0:
    total += current
  fib1 = fib2
  fib2 = current
  current = fib1 + fib2

print total
