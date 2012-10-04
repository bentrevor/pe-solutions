# What is the difference between the sum of the squares and the square of the sums?

sumOfSquares = 0

for i in range(1, 101):
  sumOfSquares += i * i
  
squareOfSum = 0

for j in range(1, 101):
  squareOfSum += j
  
squareOfSum = squareOfSum * squareOfSum

print squareOfSum - sumOfSquares