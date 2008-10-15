#!/usr/bin/env ruby

$primes = [2, 3]

def notprime(n)
	$primes.any? {|i| n % i == 0 }
end

(2..10000).each do |i|
	j = $primes.last + 2
	while (notprime(j))
		j += 2
	end
	$primes[i] = j
end

puts $primes[10000]