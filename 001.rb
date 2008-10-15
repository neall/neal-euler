#!/usr/bin/env ruby

# Find the sum of all the multiples of 3 or 5 below 1000.

mysum = 0

(1..999).each { |i|
	if ((i % 3 == 0) or (i % 5 == 0)) then
		mysum += i
	end
}
p mysum
