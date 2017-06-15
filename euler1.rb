require_relative 'spec/spec_helper'

class Multiples3and5

	def print element
		puts element
	end

	def divisible_by_3 num

		num % 3 == 0 ? num : false 
	end

	def divisible_by_5 num

		num % 5 == 0 ? num : false
	end

	def put_in_array number

		array = []
		lessThanNumber = number-1

		for i in 1..lessThanNumber do
			
			array.push(i) if divisible_by_3(i) || divisible_by_5(i)
		end
		array

	end

	def total_sum number
		array = put_in_array(number)
		p array.inject(0){|sum, x| sum + x}

	end

end

multiples = Multiples3and5.new
multiples.total_sum 1000