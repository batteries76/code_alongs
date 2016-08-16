# CIA World Factbook
require 'json'
require 'pry'

file = File.read('big.json')
data = JSON.parse(file)

# Write a method to list the capitals of the world in alphabetical order.
def countries(data)
  my_hash = JSON.parse(data)
  conv_name = my_hash[0]['conventional_short_form']
  puts conv_name
end

# Write a method to list the countries whose names end in '-stan'.
def the_stans(data)
end

# Write a method to list the top ten countries by arable land.
def farmies(data)
end

# Write a method to get a question from the user and answer it.
def expert(data)
end

countries(data)
a
binding.pry

#capitals(data)

#the_stans(data)

#farmies(data)

#expert(data)
