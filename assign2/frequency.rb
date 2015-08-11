# Write a code that will prompts a user to enter a sentence and
# then prints out a hash whose keys are the letter and values
# are the number of occurrences of that letter,
# for example if use enters "hello world" will generate:
# {"h" => 1, "e" => 1, "l" => 3, "o" => 2, "w" => 1, "d" => 1}

# The use of default value (0) allows simply incrementing the value
# when a new key is added. Without a default, keys added need to be
# checked against .nil? and given a starting value if true.
hash = Hash.new(0)

puts "Type a sentence!"

input = gets.chomp
input.strip!

array = input.split("")
array.each {|c| hash[c] += 1}
print hash
