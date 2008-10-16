#!/usr/bin/env ruby

# How many Sundays fell on the first of the month in the
# 20th century?

require 'date'

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

sundays = 0

(1901..2000).each do |year|
	(1..12).each do |month|
		if Date.civil(year, month, 1).wday == 0
			sundays += 1
		end
	end
end

puts sundays
puts (Time.now - starttime).round.to_s + ' seconds'
