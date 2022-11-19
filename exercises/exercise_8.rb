require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Verifying password creation
test_employee = @store1.employees.create(
  first_name: "Peke",
  last_name: "Morbius",
  hourly_rate: 160
)
puts test_employee
p test_employee
