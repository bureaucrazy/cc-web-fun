# bc_cities_population = {
#   vancouver: 2135201,
#   victoria: 316327,
#   abbotsford: 149855,
#   kelowna: 141767,
#   nanaimo: 88799,
#   white_rock: 82368,
#   kamloops: 73472,
#   chilliwack: 66382 }
# Write a method that takes the hash and prints if city is large
# (more than 100,000) or small (otherwise). Printing something
# like: Vancouver is a large city

bc_cities_population = {
  vancouver: 2135201,
  victoria: 316327,
  abbotsford: 149855,
  kelowna: 141767,
  nanaimo: 88799,
  white_rock: 82368,
  kamloops: 73472,
  chilliwack: 66382
  }

# Applies proper case to city name then checks if value is
# more than 100,000 to print if large city or small city.
bc_cities_population.each {|k,v|
  print k.capitalize,
  v > 100_000 ? " is a large city.\n":" is a small city.\n"
  }
