print "How many times to display? "

x = gets.chomp.to_i
y = 1

while y <= x
  puts "#{y}. Hello World"
  y += 1
end
