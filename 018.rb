#!/usr/bin/env ruby

#

starttime = Time.now
puts starttime.strftime('%Y-%m-%d %H:%M:%S')



puts 'the answer'
puts (Time.now - starttime).round.to_s + ' seconds'
