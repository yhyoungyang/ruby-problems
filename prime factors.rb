#Prime Factors
#Write a function to find all prime factors of a number

#method 1
require 'prime'
def primeFactors(number)
  Prime.prime_division(number).flat_map { | factor, power | [factor] * power }
end

puts primeFactors(128)



