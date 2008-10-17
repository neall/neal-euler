#!/usr/bin/env ruby

# sum all the positive integers that can't be written
# as the sum of two abundant numbers

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

$abundants = [12]

# return an array of divisors of n (excluding n itself)
def divisors(n)
	h = [1]
	i = 2
	while i**2 < n
		if n % i == 0
			h << i << (n / i)
		end
		i += 1
	end
	if i**2 == n
		h << i
	end
	h
end

# complete the list of abundant numbers <= 28123
(13..28123).each do |i|
	if i < divisors(i).inject {|m,o| m+o}
		$abundants << i
	end
end

puts "found #{$abundants.length} abundants"
puts (Time.now - starttime).round.to_s + ' seconds'

def $abundants.include?(n, low = 0, high = $abundants.length - 1)
	if high - low < 2
		(self[low] == n) or (self[high] == n)
	else
		if (self[low] > n) or (self[high] < n)
			false
		else
			mid = (low + high) / 2
			self.include?(n, low, mid) or self.include?(n, mid, high)
		end
	end
end

def canexpress?(n)
	($abundants.select {|a| a < n}).any? do |i|
		$abundants.include? n - i
	end
end

maxabundant = $abundants.last
sum = 0

(1..28123).each do |i|
	if ! canexpress? i
		sum += i
	end
end

puts sum
puts (Time.now - starttime).round.to_s + ' seconds'
