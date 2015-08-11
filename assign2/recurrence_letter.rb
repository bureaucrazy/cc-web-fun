# Find the most recurring letter in a string
puts "Type some words to process:"
input = gets.chomp.strip
exit if input.empty? || input.nil?

array = []
array = input.split("").compact
array.delete(" ")
hash = Hash.new(0)
array.each {|v| hash[v] += 1}
# Gets highest value and displays key matching that value.
hash.each {|k,v| puts "#{k}:#{v}" if v == hash.values.max}
