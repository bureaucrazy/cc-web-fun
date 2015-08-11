for counter in 1..100

  output = ""

  if counter % 3 == 0
    output = output + "FIZZ"
  end
  if counter % 5 == 0
    output = output + "BUZZ"
  end

  puts "#{counter}.#{output}"
end

for number in 1..100
  # We need to put this condition first since it's more restrictive.
  if number % 15 == 0
    puts "FIZZBUZZ"
  elsif number % 3 == 0
    puts "FIZZ"
  elsif number % 5 == 0
    puts "BUZZ"
  else
    puts number
  end
end

# 4.upto(100) { |num| puts num }
# 100.downto(5) { |num| puts num }
