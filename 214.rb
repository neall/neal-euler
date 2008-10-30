#!/usr/bin/env ruby

# The totient function is defined below.
#
# If you feed the output of the function back in
# iteratively, you get a chain of numbers ending in 1.
#
# Find all such chains that are 25 numbers long and
# start with a prime < 40000000.
#
# Sum those primes.

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

# $primefactors[n] should return an array of all
# prime factors of n (including n if applicable)
$primefactors = Hash.new do |h,key|
	h[key] = something
end

def totient(n)
	# number of k where 1 <= k < n and n shares no
	# common factors with k other than one
	#
	# factor n
	# find all multiples < n of the factors
	# remove all those multiples from the set 1..n-1
	# count remaining set members - that's your k
end

$chainlen = Hash.new do |h,key|
	h[key] = 1 + $chainlen[totient(key)]
end
$chainlen[1] = 1

primesum = 0

# all primes > 3 are 6x +/- 1
# we don't need to bother testing multiples of 2 or 3
(1..6666666).each do |i|
	if ($primefactors[i*6-1].length == 1) and ($chainlen[i*6-1] == 25)
		primesum += i*6-1
		puts i*6-1
	end
	if ($primefactors[i*6+1].length == 1) and ($chainlen[i*6+1] == 25)
		primesum += i*6+1
		puts i*6+1
	end
end

puts 'the answer'
puts (Time.now - starttime).round.to_s + ' seconds'
