require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
#1
p Store.sum("annual_revenue")
#2
@average_revenue = Store.sum("annual_revenue") / Store.all.count
#Store.average("annual_revenue")
p @average_revenue
#3
@high_earners = Store.where(annual_revenue: 1000000..)
p @high_earners.all.count
