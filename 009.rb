#!/usr/bin/env ruby

a = 1
b = 2
c = 997

legs = a*a + b*b
hyp = c*c

while legs != hyp
	a += 1
	b = a + 1
	c = 1000 - a - b
	legs = a*a + b*b
	hyp = c*c
	while legs < hyp
		b += 1
		c -= 1
		legs = a*a + b*b
		hyp = c*c
	end
end

puts a
puts b
puts c
puts a*b*c