require_relative 'spec/spec_helper'

class Fibonnaci 

	def fibonnaci_numbers number 

		fibArray = [1, 2]
		currentFib = 1
		secondFib = 2
		i = 1

		while i < number do
			nextFib = currentFib += secondFib 
			fibArray.push(nextFib)
			currentFib = secondFib
			secondFib = nextFib
			i = currentFib + secondFib
			
		end
		fibArray
	end

	def is_even_sum array
		array.inject(0){|sum, x| x % 2 == 0 ? sum + x : sum}
	end

	def fib_numbers_up_to number
		is_even_sum(fibonnaci_numbers(number))
	end
end

fib = Fibonnaci.new
p fib.is_even_sum(fib.fibonnaci_numbers(4000000))