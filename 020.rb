#!/usr/bin/env ruby

# sum the digits of 100 factorial

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

def factorial(n)
	if n < 2
		1
	else
		n * factorial(n-1)
	end
end

total = 0

(factorial(100)).to_s.gsub(/./) do |x|
	total += x.to_i
end

puts total
puts (Time.now - starttime).round.to_s + ' seconds'
