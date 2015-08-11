# Given an array of words, build a Hash where keys are words and
# values are the frequency of appearance of each word.

# Asks user for the exit word.
print "What's your exit word? "
x = gets.chomp.strip

# Sets default if blank.
x = "quit" if x.empty? || x.nil?

# Collect the words.
array = []
loop do
  puts "Type some words (#{x} to stop):" if array.count == 0 || array.count % 10 == 0
  input = gets.chomp.strip
  break if input.downcase == x
  # Store in an array.
  array << input unless input.empty? || input.nil?
end

# Store in hash using word as key and recurrence as value.
hash = Hash.new(0)
array.each {|word| hash[word.to_sym] += 1}
print hash
