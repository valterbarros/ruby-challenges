#13 / 2 return % = valor / 2 ...
class DecimalToBinary
	attr_accessor :binary_final
	def initialize
		@binary_final = ""
	end
	
	#Recursivity method
	def transformation_dec_binary(num)
		return @binary_final.reverse if num == 0
		@binary_final += "#{num % 2}"
		result = num / 2
		num = result
		puts "---------------"
		puts "num: #{num}"
		puts "result: #{result}"
		puts "----------------"
		transformation_dec_binary(num)
	end
end

num = gets.chomp.strip.to_i

dec = DecimalToBinary.new

puts "Final Binary: #{dec.transformation_dec_binary(num)}"
