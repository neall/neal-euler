#!/usr/bin/env ruby

#

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')

# 1-9
ct1_9 = 'onetwothreefourfivesixseveneightnine'.length
# 10-19
ct1x = 'teneleventwelvethirteenfourteenfifteen'.length
ct1x += 'sixteenseventeeneighteennineteen'.length
# 20-99
ct20_99 = 'twentythirtyfortyfiftysixtyseventyeightyninety'.length * 10
ct20_99 += 8 * ct1_9

ct1_99 = ct1_9 + ct1x + ct20_99

cthundreds = (ct1_9 + 'hundred'.length*9) * 100
ctands = 'and'.length * 99 * 9

ct1_1000 = ct1_99 * 10
ct1_1000 += cthundreds
ct1_1000 += ctands
ct1_1000 += 'onethousand'.length

puts ct1_1000
puts (Time.now - starttime).round.to_s + ' seconds'
