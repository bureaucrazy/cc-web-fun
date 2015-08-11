array = []
print "Replace FIZZ and BUZZ? "
input = gets.chomp

if input.strip.downcase == "y"
  puts "Type new word for FIZZ"
  f = gets.chomp.upcase.strip
  puts "Type new word for BUZZ"
  b = gets.chomp.upcase.strip
else
  f = "FIZZ"
  b = "BUZZ"
end

for n in 1..100
  case
  when n % 15 == 0
    # The << appends to the end of the array
    array << f+b
  when n % 5 == 0
    array << b
  when n % 3 == 0
    array << f
  else
    array << n
  end
end

# Print is generally better for something like Arrays because it displays the full format
print array
