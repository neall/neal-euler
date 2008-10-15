#!/usr/bin/env ruby

# What is the largest prime factor of the number 600851475143?

target = 600851475143
remain = target
primes = [2,3]
factors = []
i = 0

def mult(m_array)
	m_array.inject(1) { |prod,fact| prod * fact }
end

def notprime(subject, primes)
	primes.any? {|pr| subject % pr == 0}
end

while mult(factors) < target
	if (! primes[i]) then
		j = primes.last + 2
		while notprime(j, primes)
			j += 2
		end
		primes << j
	end
	while remain % primes[i] == 0
		factors << primes[i]
		remain = remain / primes[i]
	end
	i += 1
end

puts factors
