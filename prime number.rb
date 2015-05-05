# Prime Number
# Write a function to check if a number is a prime number

# method 1
def PrimeNumber?(number)
  i = 2 
  while (number/ 2 + 1) > i 
    if number%i === 0 
      return false
    else
      i += 1
    end
  end 
    return true 
end

puts PrimeNumber?(127)

#method 2

def PrimeNumber?(number)
  return false if number < 2 || number%2 == 0
  (3..number-1).select(&:odd?).each do |i|
    return false if number%i === 0 #means that it's divisible! 
  end
  return true 
end


puts PrimeNumber?(1589)


# 4 key learnings 
# 1. (x...n) -------------------> an array created from a range
# 2. array.select(parameters) --> go through an array and select elements with the parameters; parameters can be a function, and function returns true 
# 3. .each ---------------------> select each of the numbers 
# 4. 0 and 1 are NOT primed
