require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Exercise1 < ActiveRecord::Base

  Store.create({ name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: false })
  Store.create({ name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true })
  Store.create({ name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false })

  puts "Number of stores: #{Store.count}"

end



# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)

