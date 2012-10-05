# Find the last ten digits of the series 1^1 + 2^2 + ... + 1000^1000

sum = 0

for i in 1..1000
  sum += i**i
end

puts sum % 10**10

