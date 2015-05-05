#Prime Factors
#Write a function to find all prime factors of a number

#method 1
# require 'prime'
# def primeFactors(number)
#   Prime.prime_division(number).flat_map { | factor, power | [factor] * power }
# end

# puts primeFactors(128)

#method 2

def primeFactors(number, factors = [])
  return factors if number == 1
  new_factor = (2..number).find {|f| number % f == 0}
  Array.[](number / new_factor, factors + [new_factor])
end 

puts primeFactors(128)
# only gives the first level of factorization 