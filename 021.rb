#!/usr/bin/env ruby

# d(n) is defined as the sum of all proper divisors of n
# (numbers less than n that divide evenly into n)
# if d(a) = d(b) and a != b, a and b are an "amicable pair"
# sum all the amicable pairs under 10000

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

$divisors = Hash.new do |h, i|
	j = 2
	h[i] = [1]
	while j**2 < i
		if i % j == 0
			h[i] << j
			h[i] << i / j
		end
		j += 1
	end
	if j**2 == i
		h[i] << j
	end
	h[i]
end

def d(n)
	$divisors[n].inject {|m,o| m+o}
end

amsum = 0

(1...10000).each do |i|
	current = d(i)
	if d(current) == i
		amsum += i
	end
end


puts amsum
puts (Time.now - starttime).round.to_s + ' seconds'
