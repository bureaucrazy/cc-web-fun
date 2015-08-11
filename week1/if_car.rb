print "What year is your car? "
nage=gets.chomp.to_i

if nage > 2015
  puts "Future."
elsif nage == 2015
  puts "New."
elsif nage > 2010
  puts "Old."
elsif nage > 0 && nage <= 2010
  puts "Very old."
else
  puts "Is that a year?"
end
