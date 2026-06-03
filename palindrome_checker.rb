# radar, madam - you can read from both sides and get
# the same string
# racecar - aceca - cec - e - compare first and last
# item in array and one there is one character left
# we say its palindrome

# 1
def is_palindrom_easy(word)
  word == word.reverse
end

# 2
def is_palindrome(word)
  return true if word.length <= 1
  return false if word[0] != word[-1]
  is_palindrome(word[1, word.length-2])
end

puts "Palindrome Words"
print "Word: "
word = gets.chomp
puts "Is Palindrome: #{is_palindrome_easy(word)}"
