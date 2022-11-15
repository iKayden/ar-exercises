require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
p "How do you call your store?"
store_name = gets.chomp
p "How much does your store earns?"
annual_revenue = gets.chomp

p @new_store = Store.create(name: store_name, annual_revenue: annual_revenue)

if @new_store.errors.any?
  @new_store.errors.each do |attribute, message|
    puts "Error for #{attribute}: "
    puts "#{message}"
  end
end

#Need to check with instructor
