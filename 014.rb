#!/usr/bin/env ruby

# A sequence is defined such that
# n -> n/2 where n is even and
# n -> 3n+1 where n is odd
# sequence ends at 1
# find the longest such sequence that starts with
# a number under 1000000

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

$chainlen = {1 => 1}
max = 1
maxindex = 1

def chainmeas(n)
	if ! $chainlen[n]
		$chainlen[n] = if n % 2 == 0
			chainmeas(n/2) + 1
		else
			chainmeas(n*3+1) + 1
		end
	end
	return $chainlen[n]
end

(2..999999).each do |i|
	if max < chainmeas(i)
		max = $chainlen[i]
		maxindex = i
	end
end


puts 'the chain length for ' + maxindex.to_s + ' is ' + max.to_s
puts (Time.now - starttime).round.to_s + ' seconds'
