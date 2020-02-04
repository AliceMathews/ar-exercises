require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# @store1 = Store.find_by(id: 1)

# @store1.employees.create(first_name: "ghfda", last_name: "Virani", hourly_rate: 55)

# employee = Employee.create(first_name: "Alice", last_name: "Virani", hourly_rate: 55 )


print "Give me a store name: "
@store7 = gets.chomp
store = Store.create(name: @store7)
puts store.errors.messages

