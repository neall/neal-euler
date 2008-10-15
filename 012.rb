#!/usr/bin/env ruby

# What is the value of the first triangle number to have over five hundred divisors?

starttime = Time.now

def tri(n)
	n*(n+1)/2
end

numdivs = 4
index = 3
t = 6

while numdivs <= 500
	index += 1
	t = tri(index)
	limit = t / (index + (index % 2 == 0 ? 1 : 0))
	numdivs = 4
	(2...limit).each do |divisor|
		if t % divisor == 0
			numdivs += 2
		end
	end
end

puts 'Triangle #' + index.to_s + ': ' + t.to_s + ' - ' + numdivs.to_s + ' factors'
puts (Time.now - starttime).round.to_s + ' seconds'
