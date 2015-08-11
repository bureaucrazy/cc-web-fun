puts "Type (5) names separated by a space:"
names = gets.chomp.strip

array1 = names.split(" ")
array2 = []
array1.each {|n| array2 << n.capitalize}

print array2
