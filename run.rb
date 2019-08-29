require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

bronx_zoo = Zoo.new("The Bronx", "Bronx Zoo")
queens_zoo = Zoo.new("Queens", "Queens Zoo")

rat = Animal.new(bronx_zoo, "Rat", 2, "Ratty")
fat = Animal.new(bronx_zoo, "Fat", 5, "Fatty")

catty = Animal.new(queens_zoo, "Cat", 3, "Catty")

#Test your code here


binding.pry
puts "done"
