# Find the number of integers 1 < n < 10**7, 
# for which n and n + 1 have the same number of positive divisors


bigNumber = 10**7
bigArray = Array.new(bigNumber + 1, 1)

j = 2

for i in 2..bigNumber
  while j < bigNumber
    bigArray[j] += 1
    j += i
  end
  j = 0
end

answer = 0

for k in 1..bigNumber
  if bigArray[k] == bigArray[k+1]
    answer += 1
  end

end

puts answer
