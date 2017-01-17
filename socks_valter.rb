#/bin/ruby!
all_socks = %w(10 20 20 10 10 30 50 10 20).map(&:to_i)
all_socks.sort!

total_socks = all_socks.length
count_pairs = 0
count_loop = 0

while count_loop < total_socks - 1
	if all_socks[count_loop] == all_socks[count_loop+1]
		count_pairs += 1
		count_loop += 1
	end
		count_loop += 1
end

puts count_pairs