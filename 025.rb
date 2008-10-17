#!/usr/bin/env ruby

# find the first number in the Fibonacci sequence with 1000 digits

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

f2 = 1
f1 = 1
f0 = 2
i = 3

while f0 < 10**999
	f2, f1 = f1, f0
	f0 = f1 + f2
	i += 1
end

puts i
puts (Time.now - starttime).round.to_s + ' seconds'
