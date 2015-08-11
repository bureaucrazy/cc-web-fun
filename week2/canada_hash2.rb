canada = {
  Alberta: ["Calgary","Vegreville"],
  Ontario: ["Toronto","Brampton"],
  British_Columbia: ["Vancouver","Richmond"]
}

canada.each {|prov,cities|
  puts "#{prov}: #{cities.join(", ")}"
}
