#!/usr/bin/env ruby

# do not run this - it is extremely slow
# I should have used a sieve of Eratosthenes

$primes = [2, 3]

def notprime(n)
	limit = Math.sqrt(n)
	$primes.any? do |i|
		if i > limit
			false
		else
			n % i == 0
		end
	end
end

i = 3

while i < 2000000
	i += 2
	while notprime(i)
		i += 2
	end
	$primes << i
	puts i
end

$primes.delete(i)
puts $primes.inject {|m,j| m + j}
