require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

class Exercise5

  @total_ar = Store.sum("annual_revenue")
  @avg_ar = Store.average("annual_revenue")
  @filter_stores = Store.where("annual_revenue > :parameter", {parameter: 1000000}).count

  puts "Total annual revenue: #{@total_ar}"
  puts "Average annual revenue: #{@avg_ar}"
  puts "the number of stores that are generating $1M or more in annual sales: #{@filter_stores}"

end