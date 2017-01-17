#/bin/ruby!

q = gets
socks = Hash.new
pair = 0
n =[]

q.to_i.times do
	n << gets.chomp
end

# group pairs in the Hash
n.each do |s|
	puts socks
	if socks.include?(:"#{s}")
		socks[:"#{s}"] = socks[:"#{s}"] + 1
	else
		socks[:"#{s}"] = 1
	end
end

# delete imcomplet pair <= 1 and remove 1 of the odd values to turn in even value
socks.each do |key, value|
	if value <= 1
		socks.delete(key)
	elsif value.odd?
		socks[key] = value -1
	end
end
puts socks
# count pars
socks.each do |key, value|
	pair += value / 2
	puts pair
end

puts pair