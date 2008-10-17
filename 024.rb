#!/usr/bin/env ruby

#

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

# Monkeypatch for the win!
class Integer
	def factorial
		(1..self).inject(1) {|m,o| m*o}
	end
end

digits = %w[0 1 2 3 4 5 6 7 8 9]
output = ''
target = 999999

while digits.length > 1
	fact = (digits.length - 1).factorial
	index = target / fact
	output << digits.delete_at(index)
	target -= fact * index
end

output << digits.shift

puts output
puts (Time.now - starttime).round.to_s + ' seconds'
