# Enter your object-oriented solution here!
require 'prime'
class LargestPrimeFactor
  def initialize(number)
    @input=number
    @number=1
  end
 def largest_prime_factor
   i=3
    while i<=@input #this is the iterator that finds factors of the input
    if i.prime? && @input%i==0 #this checks that it's both prime and a factor
      @number=i
      @input=@input/i
      else
      i+=2
    end #end of the if statement that checks if it's a factor
  end #end of the loop that goes through all the odd numbers, checks if they're prime and a factor, and divides the input number so that it's easier to calculate the highest prime factor
  return @number
end
  def number
    @number=largest_prime_factor
  end

end