require 'spec_helper'

describe "Euler 4 test methods" do 

	context "make sure each method is named appropriately and correctly functions" do

    it "should multiply two numbers together" do

      palin = PalindromeProduct.new
      expect(palin.multiply_two(100,100)).to eql(10000)

    end

    it "should check a number is a palindrome correctly" do
      palin = PalindromeProduct.new
      expect(palin.check_palindrome(30303)).to be true
      expect(palin.check_palindrome(3303)).to be false
      expect(palin.check_palindrome(33333)).to be true
    end

    it "should correctly store the highest number" do
      palin = PalindromeProduct.new
      palin.compare_result(4000)
      palin.compare_result(50000)
      expect(palin.current_highest).to eql(50000)
    end

    it "should correctly store the highest number again" do
      palin = PalindromeProduct.new
      palin.compare_result(4000)
      palin.compare_result(500)
      expect(palin.current_highest).to eql(4000)
    end

    it "should work out and return the highest palindrome product" do

      palin = PalindromeProduct.new
      highest = palin.highest_palindrome_product(100, 999)
      expect(highest).to eql(906609)
    end
		
	end

end