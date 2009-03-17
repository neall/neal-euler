#!/usr/bin/env ruby

#

starttime = Time.now
puts '**** ' + starttime.strftime('%Y-%m-%d %H:%M:%S')

acc = 1
lastsq = 1

(1..500).each do |i|
  sq = (2*i + 1)**2
  opp = (lastsq + sq) / 2
  left = (sq + opp) / 2
  right = (lastsq + opp) / 2
  acc = acc + sq + opp + left + right

  lastsq = sq
end

puts acc

puts '**** ' + (Time.now - starttime).round.to_s + ' seconds'
