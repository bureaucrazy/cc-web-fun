# Write some code that keeps asking use for book names
# until the user enters "exit". After typing exit
# the program should display all the entered book names sorted.

books = []

while true
  # Displays the prompt at the beginning and after every 10 entries.
  puts "Type a book name ('exit' to quit):" if books.count == 0 || books.count % 10 == 0
  input = gets.chomp.strip
  break if input.downcase == "exit"

  # Prevents entry of empty or blank titles.
  books << input unless input.empty? || input.nil?

end

# Sorts and removes duplicate titles.
books.sort!.uniq!
print books
