# Prime Number
# Write a function to check if a number is a prime number

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