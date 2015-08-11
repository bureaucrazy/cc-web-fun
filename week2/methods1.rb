puts "METHODS!"
def multiply(a,b)
  a*b
end
puts "[Multiply with parenthesis]"
puts multiply(2,4)
puts "[Multiply without parenthesis]"
puts multiply 2,4

def sum(x,y)
  x+y
end
puts "[Sum]"
puts sum(2,4)

def name(n)
  "Hello #{n}."
end
puts "[Greetings]"
puts name("Bob")

# Default value
def sum(a,b=0)
  a+b
end
puts "[Default values]"
puts sum(5)
puts sum(5,2)

# Return will stop processing the method.
# Can also break a loop inside the method.
# E.g.
# for n in 1..10
# => return if n == 2
# end
def my_method(a,b)
  return a*b
  a+b
end

def power(a,b)
  a**b
end
puts "[Powers]"
puts power(2,3)

# The question mark lets the programmer know
# the method will return either TRUE or FALSE (by convention)
def by_five?(n)
  n % 5 == 0
end
puts "[Divisible]"
puts by_five?(5)
puts by_five?(4)

def greeting(*names)
  names.each {|n| puts "Hello #{n}."}
end
puts "[Splat]"
greeting "Bob", "Mike", "Alex"

def largest_num(*numbers)
  numbers.flatten.max
end
puts "[Largest number splat]"
a="1,5,3,4,9,1,2,3"   # string input
array=a.split(",")    # convert to array
array.map! {|x| x.to_i}   # convert each value to an integer
puts largest_num array #1,5,3,4,9,1,2,3
