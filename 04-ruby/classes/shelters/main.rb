require 'pry'
require './animal.rb'
require './client.rb'

shelter = {
  clients = {},
    names = {}
}

c1 = Client.new('Bob', 4, 70, 3)
c2 = Client.new('Jane', 0, 7, 1)

a1 = Animal.new('Fido', 6, 'm', 'dog')
a2 = Animal.new('Tickles', 2, 'f', 'budgie')

shelter[:clients] << c1
shelter[:clients] << c2

shelter[:animals] << a1
shelter[:animals] << a2

print 'add a person? (y/n) : '

response = gets.chomp.downcase

while response == 'y'

  print 'Do you want to add an animal or a client? (a/c) : '
  animal_or_client = gets.chomp.downcase

  if animal_or_client == 'a'
    print 'name: '
    name = gets.chomp

    print 'age: '
    age = gets.chomp

    print 'gender: '
    gender = gets.chomp

    print 'species: '
    species = gets.chomp

    shelter[:animals] << Animal.new(name, age, gender, species)

    print 'add another animal or client? (y/n) '
    response = gets.chomp.downcase


end

end

binding.pry
