# Given a hash:
# {:a => "123", :b => "345", :c => "678", :d => "910"}
# Write a code that generates an array that combines the keys and values:
#
# so the resulting array should be:
# ["a123", "b345", "c678", "d910"]

hash = {a: "123", b: "345", c: "678", d: "910"}

# Using .each method, each element needs to be stored to an array
# array=[]
# hash.each {|k,v| array << "#{k}#{v}"}

# Using .map method, a new array is created and assigned entirely
array = hash.map {|k,v| "#{k}#{v}"}

print array
