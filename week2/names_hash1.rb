names = {}
while true
  puts "Type a name: "
  input = gets.chomp
  break if input.nil? || input.empty?
  input.strip!

  if names[input.to_sym].nil?
    names[input.to_sym] = 1
  else
    names[input.to_sym] += 1
  end
end

puts names
