require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Exercise7

  print "Enter the storename\n"
  @store_name = $stdin.gets.chomp

  @add_store = Store.create({
    name: @store_name
  })

  @add_store.valid?
  p @add_store.errors.messages


end