require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Michael", last_name: "Fox", hourly_rate: 30)

@store2.employees.create(first_name: "Whitney", last_name: "Houston", hourly_rate: 1000)
@store2.employees.create(first_name: "Mona", last_name: "James", hourly_rate: 40)