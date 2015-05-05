# Palindrome
# Write a function to check if a given string is a palindrome

def isPalindrome(string)
  string.reverse == string 
end

puts isPalindrome("12344321")
puts isPalindrome("1234321")
puts isPalindrome("12345321")
puts "is stats palindromic? #{isPalindrome("stats")}"

# 2 key learnings: 
# 1. Why is return not needed?------> The last statement of any function is the function it'll return. [redundancy]
# 2. "#{xxxxxx}"" ---------------------------> Whatever, in this case xxxxxx, you put into the curly braces will escape the quotations