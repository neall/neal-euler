#!/usr/bin/env ruby

# Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.


fib2 = 1
fib1 = 1
fib0 = 2
fibsum = 0

while fib0 <= 4000000
	if fib0 % 2 == 0 then
		fibsum += fib0
	end
	fib2, fib1 = fib1, fib0
	fib0 = fib1 + fib2
end

puts fibsum
