city_ratings = {
  Vancouver: 10,
  Richmond: 8,
  Burnaby: 7
}

# Outputs the keys
city_ratings.each_key {|city| print city, "\n"}
# Outputs the values of each key
city_ratings.each_value {|rating| print rating, "\n"}
