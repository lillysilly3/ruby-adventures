def letter_frequency(text)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a
  frequency = {}
  text.each_char do |char|
    if chars.include?(char)
      unless frequency.key?(char)
        frequency[char] = 1
      else
        frequency[char] += 1
      end 
    end
  end
  return frequency
end

puts "Letter Frequency"
print "Text: "
text = gets.chomp
result = letter_frequency(text.upcase)

for key, value in result
  puts "#{key} => #{value}"
end
