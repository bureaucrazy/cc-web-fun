print "Enter a number from 1 to 100: "
input = gets.to_i

if input > 0 && input <= 100
  for counter in input..100
    puts counter
  end
else
  puts "#{input} is invalid."
end
