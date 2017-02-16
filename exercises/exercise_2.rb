require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

class Exercise2 < ActiveRecord::Base

  @store1 = Store.find(1)
  @store2 = Store.find(2)

  @store1.update({name: "Vitoria"})


end
