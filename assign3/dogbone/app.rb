require_relative "dog"
require_relative "bone"

arycolor = ["White","Black","Brown","Grey","Beige"]
arytype = ["Husky", "Beagle", "Spitz", "Retriever", "Chiuhuahua", "Pomeranian"]
arybone = [Bone.new("small"), Bone.new("big")]
errmsg = "Master needs some glasses? You picked a wrong choice. Good bye cruel world.."

puts "Welcome to My Dog Life.\n"
puts "Let's start by selecting a color for my coat."
arycolor.each {|value| puts "#{arycolor.index(value)}. #{value}"}
print "\n Please choose from 0 to #{arycolor.count - 1}: "
color = gets.chomp.to_i

puts "\n"
puts "Now let's select my dog type."
arytype.each {|value| puts "#{arytype.index(value)}. #{value}"}
print "\n Please choose from 0 to #{arytype.count - 1}: "
type = gets.chomp.to_i

puts "\n"
puts "Great job! I'm a #{arycolor[color]} #{arytype[type]}."

dog = Dog.new(arycolor[color].to_s,arytype[type].to_s)

loop do
  puts "What do you want to do Master (0 to 2)?"
  puts "0. Give small bone"
  puts "1. Give big bone"
  puts "2. Eat the bone"
  action = gets.chomp.to_i

  case action
  when 0,1
    dog.give(arybone[action])
  when 2
    dog.eat
  else
    puts errmsg
    break
  end
end
