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

def totient(n)
	# number of k where 1 <= k < n and n shares no
	# common factors with k other than one
	#
	# factor n
	# find all multiples < n of the factors
	# remove all those multiples from the set 1..n-1
	# count set members - that's your k
end

def antitotient(k)
	# returns the set of all n such that totient(n) == k
end

puts 'the answer'
puts (Time.now - starttime).round.to_s + ' seconds'
