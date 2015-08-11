time = Time.new
year = time.year

print "I bought my new car in #{year}. How about yours? (type q to quit) "

iyear = gets

if iyear.strip.downcase == 'q'
else
  iyear = iyear.to_i
  print "Your #{iyear} model car is a"
  if iyear > year
    puts " future car."
  elsif iyear == year
    puts " new car."
  elsif iyear > year - 5
    puts "n old car."
  elsif iyear > year - 10
    puts " very old car."
  elsif iyear <= year - 10
    puts "n ancient car."
  end
end
