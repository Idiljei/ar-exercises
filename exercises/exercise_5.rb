require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

totalrevenue = Store.sum(:annual_revenue)
puts "The sum is $#{totalrevenue}"
 
avgrev = Store.average(:annual_revenue)
puts "The average is $#{avgrev}"

revenuegreater1m = Store.where("annual_revenue > 1000000", true).count
puts "These stores #{revenuegreater1m} have more than 1 million in revenue"

