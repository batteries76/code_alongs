require 'pry'

class Animal
  
  attr_accessor :name, :age, :gender, :species

  def initialize(name, age, gender, species)
    @name = name
    @gender = gender
    @age = age
    @species = species
  end

  def name
    return @name
  end
end
