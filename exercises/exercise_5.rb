require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@store_total_revenue = Store.sum(:annual_revenue)
puts "Total Annual Revenue: #{@store_total_revenue}"

@store_average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue: #{@store_average_revenue}"

@revenue_over_1M = Store.where("annual_revenue < ?", 1_000_000).count
puts "Number of stores that make over $1M in revenue: #{@revenue_over_1M}"