require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Exercise6

  @store1 = Store.find(1)
  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store1.employees.create(first_name: "Hoon", last_name: "Lee", hourly_rate: 40)

  @store2 = Store.find(2)
  @store2.employees.create(first_name: "Bello", last_name: "Lang", hourly_rate: 30)
  @store2.employees.create(first_name: "Yonun", last_name: "Chen", hourly_rate: 50)


end

