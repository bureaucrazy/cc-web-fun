puts "This program will randomly pick a number"
puts "while alternating between odd and even."
puts "It will ask about points to grant or draw again,"
puts "as well as chance to steal."
puts nil
print "Enter number of students (non-number to quit): "
count = gets.to_i

exit if count == 0

oddscore = 0
evenscore = 0
chosen = 0
rnd = Random.new

# Randomly picks to start with odd or even
# 0 is odd, 1 is even
coin = rnd.rand(0..1)

for n in 1..10
  while true
    chosen = rnd.rand(1..count)
    if coin == 1
      if chosen % 2 == 0
        coin = 0
        break
      end
    else
      if chosen % 2 != 0
        coin = 1
        break
      end
    end
  end

  puts "#{coin}: #{chosen}"
end
