
def sumOfPowers?(x)
  sum = 0
  answer = x
  while x > 0 do
    sum += (x % 10)**5
    x /= 10
  end
  
  sum == answer
end

sum = 0

for i in 10..1000000
  if sumOfPowers? i
    sum += i
  end
end


puts sum