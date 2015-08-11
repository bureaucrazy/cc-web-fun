# bc_cities_population = {
#   vancouver: 2135201,
#   victoria:  316327,
#   abbotsford: 149855,
#   kelowna: 141767,
#   nanaimo:  88799,
#   white_rock: 82368,
#   kamloops: 73472,
#   chilliwack: 66382 }
# Write a method that takes the hash above and returns an array
# of the values divided by a 1000 in one line of code

bc_cities_population = {
  vancouver: 2135201,
  victoria:  316327,
  abbotsford: 149855,
  kelowna: 141767,
  nanaimo:  88799,
  white_rock: 82368,
  kamloops: 73472,
  chilliwack: 66382 }

def convert hash
  # Using .map or .collect will create a new array.
  hash.map {|k,v| v/1_000.to_f}
end

print convert bc_cities_population
