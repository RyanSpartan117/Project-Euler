require 'spec_helper'

describe "Euler 2 test methods" do

	context "Test each method for their specific functionality" do

		it "should list all of the Fibonnaci methods up to the given number" do
			fib = Fibonnaci.new
			expect(fib.fibonnaci_numbers(90)).to eql([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
		end

		it "should correctly return the last fibonacci number before 1,000,000" do
			fib = Fibonnaci.new		
			expect(fib.fibonnaci_numbers(1000000).last).to eql(832040)
		end

		it "should sum up all even values in an array" do
			fib = Fibonnaci.new
			expect(fib.is_even_sum([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])).to eql(44)
		end

		it "should use both methods to return the sum of all the values up to a given number" do
			fib = Fibonnaci.new
			expect(fib.fib_numbers_up_to(4000000)).to eql(4613732)
		end

	end
end