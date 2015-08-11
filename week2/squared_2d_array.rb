array = [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]

puts "Using Each method."
flat = array.flatten
flat.each {|n| print n**2}
print "\n"

puts "Using a nested For loop."
for counter1 in 1..array.count
  for counter2 in 1..array[counter1-1].count
    print array[counter1-1][counter2-1] ** 2
  end
end
print "\n"

puts "Using a nested Each method."
array.each {|sub|
  sub.each {|num|
    print num ** 2
  }
}
