#!/usr/bin/env ruby

#

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

def repdigits(n)
	remainder = 1 % n
	remainders = [0]
	while ! remainders.include?(remainder)
		remainders << remainder
		remainder *= 10
		remainder %= n
	end
	if remainder == 0
		0
	else
		remainders.length - remainders.index(remainder)
	end
end

max = 0
digits = 0

(2..999).each do |i|
	r = repdigits(i)
	if digits < r
		max = i
		digits = r
	end
end

puts "1/#{max} has #{digits} repeating digits"
puts (Time.now - starttime).round.to_s + ' seconds'
