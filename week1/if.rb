print "Enter number: "
num = gets.chomp.to_i

if num>100
  puts "Number is very big."
elsif num>10
  puts "Number is big."
else
  puts "Number is small."
end
