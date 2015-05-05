#Prime Factors
#Write a function to find all prime factors of a number

#method 1
require 'prime'
def primeFactors(number)
  Prime.prime_division(number).flat_map { | factor, power | [factor] * power }
end

puts primeFactors(128)

#method 2

def primeFactors(number, factors = [])
  return factors if number == 1
  new_factor = (2..number).find {|f| number % f == 0}
  Array.[](number / new_factor, factors + [new_factor])
end 

puts primeFactors(128)
# only gives the first level of factorization 

#method 3

def primeFactors(number)
  factors =[]
  while (number > 1) do 
    i = 2
    while i <= number*2/3 && number%i != 0 do 
      i += 1
    end
    factors << i 
    number /= i 
  end 
  factors.sort
end

#2 key learnings
# 1. << ----------------------> = .push into an array, append 
# 2. /= ----------------------> number = number / divisor 
