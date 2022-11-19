require_relative '../setup'
# require_relative './exercise_1'
# require_relative './exercise_2'
# require_relative './exercise_4'
# require_relative './exercise_6'
@store1 = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)
@store2 = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)
@store3 = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)
puts "The store - > #{@store1.name} has been created!"
puts "The store - > #{@store2.name} has been created!"
puts "The store - > #{@store3.name} has been created!"

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

@store1 = Store.find(1)

# Make sure non-empty stores cannot be destroyed
if @store1.destroy
  puts "Store destoyed! It has #{@store1.employees.size} employees =/ Not cool, amigo!"
else
  puts "Could not destroy the store =)"
end

# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: "Test Empty Store", annual_revenue: 0)
if @empty_store.destroy
  puts "Empty Store destoyed! This is good!"
else
  puts "Whoa! Empty store should be destroyable... Not cool, man!"
end
