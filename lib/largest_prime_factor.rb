# Enter your procedural solution here!
require 'prime'

def largest_prime_factor(input)
  i=3
  while i<=input  #tried an ennumerable and a loop at first. They worked but were too slow for the largest number. Switched to a loop that only goes through odd numbers to find the first prime factor, and then divides the input until it gets the largest prime factor.
    if i.prime? && input%i==0
      high=i
      input=input/i
    else
      i+=2 #to loop through ODD numbers, and ONLY when necessary
    end #end of the if statement that checks if it's a factor
  end #end of the factor-finding while loop
 return high
end