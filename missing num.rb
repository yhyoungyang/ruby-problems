# Missing Number
#You have an array of numbers 1 to 100 in an array. Only one number is missing in the array. The array is unsorted. Find the missing number.

a =* (1..100)
b = a.shuffle
b.delete_at(67) # creates unknown missing number

def missingNumber(array)
  return (1..100).reduce(:+) - array.reduce(:+)
end

puts missingNumber(b)