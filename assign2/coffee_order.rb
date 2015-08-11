# Using case / when statements ask user to enter the coffee shop
# they want to order from and then print:
# "Grande Latte" if they enter Starbucks and
# "Double Double" if they enter "Tim Hortons" and
# "Medium Coffee" if they enter Blenz and
# "I don't know this shop" if the enter something else.

puts "Welcome to the coffee block!"
puts "Please type the name of the shop you wish to enter:"
puts "1. Starbucks"
puts "2. Tim Hortons"
puts "3. Blenz"
print ">"

input = gets.chomp.strip
input.downcase! unless input.nil? || input.empty?

case input
when "starbucks"
  puts "One order of Grande Latte please!"
when "tim hortons"
  puts "One order of Double Double please!"
when "blenz"
  puts "One order of Medium Coffee please!"
else
  puts "I don't know this shop."
end
