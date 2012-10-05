# What is the first term in the Fibonacci sequence to contain 1000 digits?

thousandDigits = 1

for i in 1...1000
  thousandDigits *= 10
end


fib1 = 1
fib2 = 1
current = 2
count = 3

while current < thousandDigits do
  count += 1
  fib1 = fib2
  fib2 = current
  current = fib1 + fib2
end

puts count



