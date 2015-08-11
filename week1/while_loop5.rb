words = ""
counter = 1
counter = counter.to_i

# This is for infinite loop or just start with 'loop'
while true
  print "Type your word ('quit' to exit): "
  input = gets.chomp.strip

  if input.upcase == 'QUIT'
    break
  end

  if counter % 2 == 0
    words = words + input.upcase + " "
  else
    words = words + input + " "
  end
  counter += 1
end

puts words
