require_relative 'spec/spec_helper'

class PalindromeProduct
  attr_accessor :current_highest
  def multiply_two(num1, num2)

    num1 * num2
    
  end

  def check_palindrome(number)
    number_string = number.to_s
    if number_string == number_string.reverse
      true
    else
      false
    end

  end

  def compare_result(number)
    @current_highest ||= number

    @current_highest = number if number > @current_highest

  end

  def highest_palindrome_product(start, finish)

    for i in start..finish
      for j in start..finish
        product = multiply_two(i,j)
        if check_palindrome(product)
          compare_result(product)
        end
      end 
    end

    @current_highest
    
  end

end