a = :hello
puts a.object_id
b = :hello
puts b.object_id

products1 = {
  Sony: "Computers",
  Apple: "Computers",
  Tide: "Detergent"
}
puts products1

products2 = {
  Sony: ["Computers","MP3"],
  Apple: "Computers",
  Tide: "Detergent"
}
puts products2
