#!/usr/bin/env ruby

#

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

$memo = {}

def c(x,y)
	if x == 0 or y == 0
		1
	else
		if x < y
			x, y = y, x
		end
		if $memo[[x,y]]
			$memo[[x,y]]
		elsif x == y
			$memo[[x,y]] = 2 * c(x-1,y)
		else
			$memo[[x,y]] = c(x-1,y) + c(x,y-1)
		end
	end
end

puts c(20,20)
puts (Time.now - starttime).round.to_s + ' seconds'
