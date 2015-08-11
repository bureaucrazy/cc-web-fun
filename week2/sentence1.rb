puts "Type a sentence:"
input = gets.chomp.strip

array = input.split(" ")
puts "\n"
array.each {|word| word.capitalize!}

output = array.join(" ")
puts output
