while true
  print "Enter a number (q to quit) "
  input = gets

  if input.strip.downcase == "q"
    puts "Good bye."
    break
  else
    input = input.to_i
    flag = 0

    if input % 3 == 0
      puts input ** 3
      flag = 1
    end

    if input % 2 == 0
      puts input ** 2
      flag = 1
    end

    puts input if flag == 0
  end
end
