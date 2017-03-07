require 'decimal_to_binary'

RSpec.describe DecimalToBinary, "test decimal to binary class" do
	context "core of app" do
		it "correct binary" do
			dec = DecimalToBinary.new
			expect(dec.transformation_dec_binary(500000000)).to eq "11101110011010110010100000000"
		end
	end
end