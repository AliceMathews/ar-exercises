require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)
@store6 = Store.find_by(id: 6)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mindy", last_name: "Mac", hourly_rate: 70)
@store2.employees.create(first_name: "Emma", last_name: "Giles", hourly_rate: 90)
@store2.employees.create(first_name: "Stu", last_name: "Gold", hourly_rate: 80)
@store2.employees.create(first_name: "Jake", last_name: "Vart", hourly_rate: 127)
@store4.employees.create(first_name: "Elke", last_name: "Andrusko", hourly_rate: 45)
@store4.employees.create(first_name: "Jules", last_name: "Parker", hourly_rate: 53)
@store5.employees.create(first_name: "Minesh", last_name: "Desai", hourly_rate: 200)
@store6.employees.create(first_name: "Hannah", last_name: "Paque", hourly_rate: 60)
@store6.employees.create(first_name: "Colin", last_name: "Tim", hourly_rate: 45)
