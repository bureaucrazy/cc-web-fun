# Ask the user for personal information:
# first name, last name, city of birth and age.
# Then store than information in a hash.
# After that loop through the hash and display the results, for example:
#
# Your first name is Tam.
#
# Capitalize the inputs from the user if they are capitalizable

# From stackoverflow adding color to strings.
class String
def black;          "\033[30m#{self}\033[0m" end
def red;            "\033[31m#{self}\033[0m" end
def green;          "\033[32m#{self}\033[0m" end
def brown;          "\033[33m#{self}\033[0m" end
def blue;           "\033[34m#{self}\033[0m" end
def magenta;        "\033[35m#{self}\033[0m" end
def cyan;           "\033[36m#{self}\033[0m" end
def gray;           "\033[37m#{self}\033[0m" end
def bg_black;       "\033[40m#{self}\033[0m" end
def bg_red;         "\033[41m#{self}\033[0m" end
def bg_green;       "\033[42m#{self}\033[0m" end
def bg_brown;       "\033[43m#{self}\033[0m" end
def bg_blue;        "\033[44m#{self}\033[0m" end
def bg_magenta;     "\033[45m#{self}\033[0m" end
def bg_cyan;        "\033[46m#{self}\033[0m" end
def bg_gray;        "\033[47m#{self}\033[0m" end
def bold;           "\033[1m#{self}\033[22m" end
def reverse_color;  "\033[7m#{self}\033[27m" end
def no_colors
    self.gsub /\033\[\d+m/, ""
end
end

# From stackoverflow website. Capitalize first letter of every word
# except certain words.
class String
  def title_case
    title = self.split
    title.map do |word|
      unless (word.include?("of")) || (word.include?("the")) && (title.first != "the")
        word.capitalize
      end
    end.join(" ")
  end
end

yourid = Hash.new
puts "[Welcome to Portal Security]\n\nBegin security check..\n".green
print "Enter first name: "
yourid[:fname] = gets.chomp.strip.title_case
print "Enter last name: "
yourid[:lname] = gets.chomp.strip.title_case
print "Enter city of birth: "
yourid[:city] = gets.chomp.strip.title_case
# Forces integer input for age.
loop do
  print "Enter your age: "
  a=gets.chomp.strip
  if a.to_i.to_s == a
    yourid[:age] = a.to_i
    break
  end
  puts "Invalid!"
end

puts "\nSecurity check complete!\n".green
puts "Welcome back to the city of #{yourid[:city].bold}, #{yourid[:fname].blue} #{yourid[:lname].blue}."
puts "It has been #{yourid[:age].to_s.red} years since."
# Directs the user to the correct place depending on age category.
print "Head straight and exit towards the ", yourid[:age] >= 18 ? "adults".red : "minors".red, " section.\n"
