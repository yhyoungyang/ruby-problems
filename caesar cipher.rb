#Caesar Cipher
#Write a function to encrypt a message (by shifting char code up or down). Write a function to decrypt a message

# Useful methods:
# - [String::ord](http://ruby-doc.org/core-2.2.0/String.html#method-i-ord) => encryption & decryption
# - [String::chr](http://ruby-doc.org/core-2.0.0/String.html#method-i-chr) => encryption & decryption

#method 1 (needs to be modified)
$a = []
def encrypt(message)
  message.each_char do |i|
    $a.push(i.ord)
  end
  puts $a
end
puts encrypt("I walk slowly but I never walk backward.")

def decrypt(message)
  b = []
  message.each_with_index { |i|
    b.push(i.chr)
  } 
  puts b.join
end

puts decrypt($a)

#method 2

OFFSET = 1

def encrypt(message)
  encrypted = ""
  message.each_char {|c| encrypted << (c.ord+OFFSET).chr }
  encrypted
end

def decrypt(message)
  decrypted = ""
  message.each_char {|c| decrypted << (c.orf-OFFSET).chr}
end

message = "Matz is Nice So We Are Nice"
puts "Original msg: #{message}"

messageEncrypted = encrypt(message)
puts "Encrypted msg: #{messageEncrypted}"

puts "Decrypted msg: #{messageEncrypted}"

# Time taken: 60mins
#  key learnings: 
# 1. $ ------------------> can be used to declare a global variable
# 2. each_char ----------> allows access to each character within a string
# 3. each_with_index ----> access each element within an array 
# 4. puts ---------------> prints out the results of an object
# 5. prints -------------> prints out the results of a method
# 6. arr.push -----------> assuming arr is defined as an array, .push inserts new elements into the array
# 7. arr.join -----------> assuming arr is defined as an array, assuming each element in array is a string, .join connects all the strings in the array 
# 8. object.class -------> checks the nature of the object (array, string, fixnum etc)
# 9. fixnum -------------> in Ruby, fixnum are considered integers and have access to all methods of integers; fixnum consists at least 24 bits
# 10. bignum ------------> numbers bigger than 2 in Ruby 
# ============================================================================================
# 11. CAPSLETTER --------> created a constant
# 12. |x| ---------------> piped variable is called an iterator 