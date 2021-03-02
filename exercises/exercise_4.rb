require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

# Borrowing and modifying the code from Exercise one, create 3 more stores:
Store.create(name: "Surrey",
annual_revenue: 224000,
mens_apparel: false,
womens_apparel: true
)
puts "----------"

Store.create(name: "Whistler",
annual_revenue: 1900000,
mens_apparel: true,
womens_apparel: false
)
puts "----------"

Store.create(name: "Yaletown",
annual_revenue: 430000,
mens_apparel: true,
womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|  
 puts "Name: #{store.name} Annual Revenue:#{store.annual_revenue}"
end

@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < 1000000', true)
@womens_stores.each do |store| 
  puts "Name: #{store.name} Annual Revenue:#{store.annual_revenue}"
end 
