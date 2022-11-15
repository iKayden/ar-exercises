require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

#1
@store1 = Store.first
puts @store1.id
p @store1

#2
@store2 = Store.second
puts @store2.id
p @store2

#3

@store1.update(name: "Gucci")
p @store1
