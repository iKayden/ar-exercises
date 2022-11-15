require_relative '../setup'

puts "Exercise 1"
puts "----------"

store1 = Store.create(name: "Burnaby", annual_revenue: "300000", men: "true", women: "true")
store2 = Store.create(name: "Richmond", annual_revenue: "1260000", men: "false", women: "true")
store3 = Store.create(name: "Gastown", annual_revenue: "190000", men: "true", women: "false")

puts store1
puts store2
puts store3

# puts Store.all.count

# Your code goes below here ...
