load "cookie.rb"

# Creates a class Oreo that inherits from Cookie class.
# Oreo is called the subclass or child class
# Cookie is called the superclass or parent class
# in Ruby, a class can only inherit from one other class.
class Oreo < Cookie
  attr_accessor :filling_type

  # This overrides the details method that came from the Cookie class.
  def details
    puts "This is an Oreo cookie with #{sugar_amount}g of sugar, #{@flour_amount}g of flour and #{filling_type} filling."
  end
end
