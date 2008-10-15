#!/usr/bin/env ruby

# sum all the digits of 2 raised to the 1000th power

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

total = 0

(2**1000).to_s.gsub(/./) do |x|
	total += x.to_i
end

puts total
puts (Time.now - starttime).round.to_s + ' seconds'
