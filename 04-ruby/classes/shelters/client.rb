require 'pry'

class Client

  attr_accessor :name, :num_of_children, :age, :num_of_pets

  def initialize(name, num_of_children, age, num_of_pets)
    @name = name
    @num_of_children = num_of_children
    @age = age
    @num_of_pets = num_of_pets
  end

  def name
    return @name
  end
end
