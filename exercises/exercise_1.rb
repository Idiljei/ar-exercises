require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# Use Active Record's create class method multiple times to create 3 stores in the database:

Store.create(name: "Burnaby",
annual_revenue: 3000000,
mens_apparel: true,
womens_apparel: true
)
puts "----------"

Store.create(name: "Richmond",
annual_revenue: 1260000,
mens_apparel: false,
womens_apparel: true
)
puts "----------"

Store.create(name: "Gastown",
annual_revenue: 190000,
mens_apparel: true,
womens_apparel: false
)

# puts Store.count