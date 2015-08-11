print "What's your grade? "

ngrade = gets.chomp.to_i

if ngrade > 95
  puts "A"
elsif ngrade > 90
  puts "B"
elsif ngrade > 85
  puts "C"
elsif ngrade > 80
  puts "D"
else
  puts "F"
end
