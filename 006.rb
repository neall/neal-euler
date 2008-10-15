#!/usr/bin/env ruby

sumofsquares = 0
sum = 0

(1..100).each do |n|
	sumofsquares += n*n
	sum += n
end

puts (sum*sum - sumofsquares)