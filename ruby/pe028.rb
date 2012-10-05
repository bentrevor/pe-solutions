# What is the sum of both diagonals in a 1001 by 1001 spiral?

answer = 0

for i in 1..500
  answer += ((4 * (2 * i + 1) ** 2) - (12 * i))
end

puts answer + 1