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

# an array of known primes
$primes = [2,3]
# find the (n+1)th prime
def prime(n)
	if $primes[n]
		$primes[n]
	else
		c = prime(n-1) + 2
		i = 1
		while $primes[i]**2 <= c
			if c % $primes[i] == 0
				c += 2
				i = 1
			else
				i += 1
			end
		end
		$primes[n] = c
	end
end

# $primefactors[n] should return an array of all
# prime factors of n (including n if applicable)
$primefactors = Hash.new do |h,key|
	h[key] = []
	i = 0
	p = prime(i)
	remain = key
	while p**2 <= remain
		if remain % p == 0
			h[key] << p
		end
		while remain % p == 0
			remain /= p
		end
		i += 1
		p = prime(i)
	end
	if h[key].empty
		h[key] << key
	end
	h[key]
end

# This is wrong:
def fshare(n, factors)
	if factors.empty?
		0
	else
		fs = (n / factors.head) + fshare(n, factors.tail)
		factors.tail.each do |factor|
			fs -= n / (factors.head * factor)
		end
		fs
	end
end

# totient(n) = number of k where 1 <= k < n and n
# shares no common factors with k other than one
# steps:
# factor n
# find all multiples < n of the factors
# remove all those multiples from the set 1..n-1
# count remaining set members - that's your k
def totient(n)
	factors = $primefactors[n]
	n - fshare(n, factors)
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
