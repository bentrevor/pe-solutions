# Find the number of integers 1 < n < 10**7, 
# for which n and n + 1 have the same number of positive divisors


bigNumber = 10**7
bigArray = Array.new(bigNumber + 1, 1)

j = 2

# Instead of using a numDivisors() function to calculate the number of divisors,
# I'm looping through and adding one to every second number (for multiples of 2),
# then adding one to every third number (for multiples of 3), etc.  This results
# in an array such that bigArray[x] = numDivisors(x)
for i in 2..bigNumber
  while j < bigNumber
    bigArray[j] += 1
    j += i
  end
  j = 0
end

answer = 0

# Then I just need to loop through the array to check how many times
# bigArray[x] == bigArray[x + 1]
for k in 1..bigNumber
  if bigArray[k] == bigArray[k+1]
    answer += 1
  end

end

puts answer
