#Caesar Cipher
#Write a function to encrypt a message (by shifting char code up or down). Write a function to decrypt a message

# Useful methods:
# - [String::ord](http://ruby-doc.org/core-2.2.0/String.html#method-i-ord) => encryption 
# - [String::chr](http://ruby-doc.org/core-2.0.0/String.html#method-i-chr) => decryption



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