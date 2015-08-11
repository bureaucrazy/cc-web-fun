puts "Type a list of names:"
array = gets.chomp.strip.split(" ")

# puts "Each"
# array.each {|name|name.capitalize!.reverse!}
# print array, "\n"

# Using capitalize on a string already capitalized will output nil
# using reverse on nil will result in error.
# Use the ! on map.

puts "Map"
array.map! {|name|name.capitalize.reverse}
print array, "\n"
