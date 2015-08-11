cars = {
  Toyota: "Corolla",
  Honda: "Accord",
  Hyundai: "Sonata"
}

# Outputs keys and values
puts "#{cars.keys}: #{cars.values}"

cars.each {|brand, model| puts "#{brand} makes #{model}"}
