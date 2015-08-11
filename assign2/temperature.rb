# Given a hash of average temperatures:
#
# average_temperature_in_c = {vancouver: 13.7, edmonton: 8.5, Calgary: 10.5}
# Create another hash called average_temperature_in_f
# that has the same keys (city names) but the
# temperatures are in Fahrenheit instead of Celcius.
#
# The formula to convert Celsius to Fahrenheit is: F = C * 9/5 + 32

average_temperature_in_c = {vancouver: 13.7, edmonton: 8.5, Calgary: 10.5}

# Need to create a new hash to store value
average_temperature_in_f = {}
# Assigns converted value to the same key in the new hash
average_temperature_in_c.each {|k,v| average_temperature_in_f[k] = v * 9/5 + 32}

puts "Average Temperature in C:"
print average_temperature_in_c
puts "\n"
puts "Average Temperature in F:"
print average_temperature_in_f
puts "\n"
