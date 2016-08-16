require 'pry'
require './person'

file = File.open('crappy_database.txt', 'a+') do |file|

  #file.puts 'hello crappy database'

  print 'add a person? (y/n) '
  response = gets.chomp.downcase

  while response == 'y'

    print 'name: '
    name = gets.chomp

    print 'age: '
    age = gets.chomp

    print 'gender: '
    gender = gets.chomp
    file.puts "#{name}, #{age}, #{gender}"

    print 'add another person? '
    response = gets.chomp.downcase
  end

end

people = []

File.open('crappy_database.txt', 'r') do |file|
  # each line
  file.each do |line|
#    puts line
    data = line.split(',')
    person = Person.new(data[0], data[1], data[2])
    people << person
  end
end

people.each do |person|
  puts person.name
end

binding.pry
