# Use snake_case for: variables, methods, file_name
# Use CamelCase for classese and modules
# A name starting with capital letter is treated as constant
# as should be for classes.
class Cookie
  # This method gets called when you instantiate a new object:
  # Cookie.new
  def initialize(sugar_amount, flour_amount)
    # Defining a variable with an @ sign before it makes it an instance variable
    # accessible anywhere within public or private instance methods in this
    # class. Every object will have it's own set of these variable.
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    puts "Creating the cookie object."
  end

  attr_reader :sugar_amount
  # is equivalent to the code below
  # def sugar_amount
  #   @sugar_amount
  # end

  attr_writer :sugar_amount
  # is equivalent to the code below
  # Defining a method with a = sign at the end of its name,
  # makes it possible to call the method with an equal sign.
  # Example:
  # c=Cookie.new(1,2)
  # c.sugar_amount = 5
  # this method is generally called a SETTER method.
  # def sugar_amount=(new_amount)
  #   @sugar_amount = new_amount
  # end

  attr_accessor :sugar_amount
  # is equivalent to the code below
  #attr_reader :sugar_amount
  #attr_writer :sugar_amount

  def details
    puts "This cookie has #{@sugar_amount}g of sugar and #{@flour_amount}g of flour."
  end

  # This is a class method that you call directly on the class and not on an
  # object of the class. So you call it:
  # Cookie.info
  def self.info
    puts "I'm a cookie class."
  end

  def bake_and_eat
    # "a" is a local variables and the scope is within this method only
    #a = 1
    bake  # I'm able to call this private method because it's within this class
    eat
  end

  # we call this method an instance method (or object method)
  # because we call it on the objects created from this class
  # this is also considered a public method
  def eat
    # the puts will not work because "a" variable does not exist in this method
    #puts a
    puts "Yummy!"
  end

  # All the methods defined after this 'private' keyword are
  # private methods.
  # Private methods can't be called from outside this class definition
  private

  def bake
    puts "Baking the cookie.."
  end
end
