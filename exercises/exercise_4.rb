require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

class Exercise4 < ActiveRecord::Base

  Store.create({ name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true })
  Store.create({ name: "Whistler", annual_revenue: 1260000, mens_apparel: true, womens_apparel: false })
  Store.create({ name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: true })

  @mens_store = Store.where(mens_apparel: true)

  # puts @mens_store

  @mens_store.each do |i|
    puts "Men's store #{i.name} has annual revenue of #{i.annual_revenue}."
  end


  @womens_store = Store.where(womens_apparel: true).where("annual_revenue < :parameter", {parameter: 1000000})

  # puts @mens_store

  @womens_store.each do |i|
    puts "Women's store #{i.name} has annual revenue of #{i.annual_revenue}."
  end

end
