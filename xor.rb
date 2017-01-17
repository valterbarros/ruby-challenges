#!/bin/ruby
count = 0
q = 2
for a0 in (0..q-1)
  count = 0
  x = gets.strip.to_i
  1.upto(x-1){|n| 
    if (n ^ x) > x
        count += 1
    end
  }
  puts count
end