#!/usr/bin/env ruby

def findpal()
	def pal(base)
		return base * 1000 + base.to_s.reverse.to_i
	end

	base = 997
	
	while base > 99
		p = pal(base)
		fact1 = Math.sqrt(p).round
		while (fact1 < 1000 and (p / fact1) >= 100)
			if p % fact1 == 0 then
				puts fact1
				puts p / fact1
				return p
			else
				fact1 += 1
			end
		end
		base -= 1
	end
	
end

puts findpal()