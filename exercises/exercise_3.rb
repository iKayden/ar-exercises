require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

#1
@store3 = Store.third
#Store.find(3)
p @store3

#2
@store3.destroy
destroyed_store = Store.find_by(name: "Gastown")
p destroyed_store #> nil

#3

puts Store.all.count #2 Stores
