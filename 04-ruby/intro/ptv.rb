require 'pry'

stations = %w{richmond yarra flinders windsor}

lines = {
  'sandy' : ['richmond', 'yarra', 'flinders', 'windsor'],
  'alamein' : ['prahran', 'richmond', 'flagstaff']
}

puts "Station you want to get on: "
station_on = gets.chomp

puts "Station you want to get off: "
station_off = gets.chomp

station_on_index = stations.index(station_on)
station_off_index = stations.index(station_off_index)

jounrney = stations.slice(station_on_index..station_off_index)

binding.pry
