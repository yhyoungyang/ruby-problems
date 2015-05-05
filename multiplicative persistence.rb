#Multiplicative Persistence

# In mathematics, the persistence of a number is the number of times one must apply a given operation to an integer before reaching a fixed point at which the operation no longer alters the number.

# The multiplicative persistence of 39 is 3, because it takes three steps to reduce 39 to a single digit: 39 → 27 → 14 → 4.

# Write a function to find the `multiplicative persistence` of a number. You must use recursion.

def multiplicative_persistence(num)
  times = 0 
  while num.to_s.length > 1
    array_of_digits = num.to_s.split('')
    times += 1
    num = array_of_digits.inject {|multiple, x| multiple.to_i * x.to_i }
    puts num
  end
  puts "Multiple persistence of #{num} is #{times}"
end

multiplicative_persistence(8)