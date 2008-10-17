#!/usr/bin/env ruby

# sort the names in "names.txt" alphabetically, sum the values of
# their letters (a being 1, b: 2, etc.) and multiply by their position
# in the list. Sum all the name values you get this way.

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')
names = []
total = 0

File.open('names.txt') do |namesfile|
	names = namesfile.gets.split(',').map {|n| n[1..-2]}
end
names.sort!
names.each_with_index {|name,i|
	total += (i+1)*name.split(//).inject(0) {|m,o| m + o[0]-64}
}

puts total
puts (Time.now - starttime).round.to_s + ' seconds'
