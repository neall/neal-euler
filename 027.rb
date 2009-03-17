#!/usr/bin/env ruby

#

starttime = Time.now
puts '**** ' + starttime.strftime('%Y-%m-%d %H:%M:%S')

# an array of known primes
$primes = [2,3]
# find the (n+1)th prime
def prime(n)
	if $primes[n] then
		$primes[n]
	else
    while n - $primes.length > 100
      prime (n + $primes.length) / 2
    end
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

def isprime?(x)
  while $primes.last < x
    prime($primes.length)
  end
  $primes.any? {|p| p == x}
end

i = 0
b = prime(i)
maxlen = 0
maxa = 0
maxb = 0

while b < 1000
  (-1000..1000).each do |a|
    n = 0
    while isprime?(n**2 + a*n + b)
      n += 1
    end
    if n > maxlen
      maxlen = n
      maxa = a
      maxb = b
    end
  end
  i += 1
  b = prime(i)
end

puts "max chain length is #{maxlen}"
puts "a is #{maxa}"
puts "b is #{maxb}"
puts "the product is is #{maxb * maxb}"

puts '**** ' + (Time.now - starttime).round.to_s + ' seconds'
