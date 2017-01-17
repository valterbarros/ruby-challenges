#13 / 2 return % = valor / 2 ...
class DecToBinary
	attr_accessor :binario_final, :resultado 
	def initialize
		@binario_final = " "
	end
	
	#recursivity method
	def transformation_dec_binary(num)
		return binario_final.reverse if num == 0
		@binario_final += "#{num % 2}"
		@resultado = num / 2
		num = @resultado
		puts "---------------"
		puts "num: #{num}"
		puts "resultado: #{@resultado}"
		puts "----------------"
		transformation_dec_binary(num)
	end
end

num = gets.chomp.strip.to_i

dec = DecToBinary.new

puts "Binario final: #{dec.transformation_dec_binary(num)}"
