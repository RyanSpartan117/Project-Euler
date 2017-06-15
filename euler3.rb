require_relative 'spec/spec_helper'
require 'prime'
require 'pry'

class PrimeFactorisation

	def is_prime number
		number.prime? ? number : false 
	end

	def prime_div number

		Prime.prime_division(number)
	end

	def largest_prime_number array
		array = array.flatten
		array = array.select {|num| is_prime(num)}
		array.inject(0){|largest, nextNum| largest > nextNum ? largest : nextNum }

	end

	def largest_prime_factor number

		largest_prime_number(prime_div(number))

	end

end


pf = PrimeFactorisation.new
# Binding.pry
p pf.largest_prime_factor(600851475143)