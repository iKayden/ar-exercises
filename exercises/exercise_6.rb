require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
#3
@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)
#4
@store1.employees.create(
  first_name: "Kay",
  last_name: "Winston",
  hourly_rate: 30
)
@store1.employees.create(
  first_name: "Lee",
  last_name: "Zhong",
  hourly_rate: 160
)
@store2.employees.create(
  first_name: "Lisa",
  last_name: "Simp",
  hourly_rate: 70
)
@store2.employees.create(
  first_name: "Mona",
  last_name: "Lisa",
  hourly_rate: 10
)
@store3.employees.create(
  first_name: "Alexa",
  last_name: "Siri",
  hourly_rate: 15
)

# You cannot call create unless the parent is saved BUG
p @store1.employees.all.count #> 3
p @store2.employees.all.count #> 2
p @store3.employees.all.count #> 1
