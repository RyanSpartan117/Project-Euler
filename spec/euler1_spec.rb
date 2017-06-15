require 'spec_helper'

describe "Euler 1 method tests" do  

	context "Teting each of the methods for their functionality" do

		it "should check if a number is divisible by 3" do
			multiples = Multiples3and5.new
			expect(multiples.divisible_by_3(12)).to be_truthy
		end

		it "should check if a number is divisble by 5" do
			multiples = Multiples3and5.new
			expect(multiples.divisible_by_5(500)).to be_truthy
		end

		it "should list all of the numbers that are divisible by either 3 or 5 below a given number in an array" do
			multiples = Multiples3and5.new
			expect(multiples.put_in_array(10)).to eql([3, 5, 6, 9])
		end

		it "should add up all the numbers in the array" do
			multiples = Multiples3and5.new
			expect(multiples.total_sum(10)).to eql(23)
		end
	end
end