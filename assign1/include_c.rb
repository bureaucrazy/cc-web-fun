print "Type word(s) to search for the letter 'c' (q to quit) "
word = gets

if word.strip.downcase == "q"
  puts "Good bye."
else
  word = word.to_s

  puts "Using include:"
  if word.downcase.include? "c"
    puts "Yes it has C"
  else
    puts "There is no C"
  end

  puts "Using index:"
  if word.downcase.index("c") != nil
    puts "Yes it has C"
  else
    puts "There is no C"
  end

  puts "Using string index:"
  count = 0
  flag = 0
  for count in 0..word.length - 1
    if word[count].downcase == "c"
      puts "Yes it has C"
      flag = 1
      break
    end
  end
  puts "There is no C" if flag == 0
end
