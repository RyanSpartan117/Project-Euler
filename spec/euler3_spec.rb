require 'spec_helper'

describe "Euler 3 test methods" do

	context "check each method performs it's named functionality" do

		it "should check if a number is prime" do

			pf = PrimeFactorisation.new
			expect(pf.is_prime(199)).to be_truthy

		end

		it "should give back a prime factor tree array" do

			pf = PrimeFactorisation.new
			expect(pf.prime_div(30000000)).to eql([[2, 7], [3, 1], [5, 7]])
		end

		it "should give back the largest number from the prime factorisation tree array" do

			pf = PrimeFactorisation.new
			expect(pf.largest_prime_number([[2, 7], [3, 1], [5, 7]])).to eql(7)
		end

		it "should give you back the largest prime factor of a given number" do

			pf = PrimeFactorisation.new
			expect(pf.largest_prime_factor(3000000)).to eql(5)
		end
	end
end 