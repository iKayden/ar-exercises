require_relative '../setup'

puts "Exercise 1"
puts "----------"

store1 = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)
store2 = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)
store3 = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

puts store1.name
puts store2.name
puts store3.name

puts Store.all.count

# Your code goes below here ...
