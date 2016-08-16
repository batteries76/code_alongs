require 'pry'

puts "Welcome to the Crappy Calculator"
puts "\n"
puts "\n"
puts "Please choose from the following to contine"
puts "\n"
puts "(b)asic, (a)dvanced, (m)ortgage, bm(i), (t)rip or (q)uit: "
input = gets.chomp.downcase

if input == 'b'
  puts 'enter a value: '
  value_1 = gets.chomp
  puts 'enter another value: '
  value_2 = gets.chomp
  total = value_1.to_i + value_2.to_i
  puts "I've handily added them up for you."
  puts "The total is #{total}"
end

if input == 'a'
  puts 'enter a value: '
  value_3 = gets.chomp
  puts 'enter another value: '
  value_4 = gets.chomp
  total_2 = value_3.to_i * value_4.to_i
  puts "I've handily multiplied them for you."
  puts "The total is #{total_2}"
end
