# require 'pry'
# # problem 601

# def streak num
# 	number = num
# 	counter = 0
# 	while divisible(number+counter, counter+1) do
# 		counter += 1
# 	end
# 	counter
# end

# def divisible (num1, counter)

# 	if num1 % counter == 0 
# 		true
# 	else 
# 		false
# 	end
# end

# binding.pry
# puts streak 14