puts "Type a sentence: "
array = gets.chomp.strip.downcase.split("")

for n in 1..array.length
  if array[n-1] != " "
    if n % 3 == 0
      array[n-1]=array[n-1].upcase!
    end
  end
end

output = array.join
puts output
