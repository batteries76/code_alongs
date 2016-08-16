require 'pry'

my_fish = {
  name: 'fishy fish',
  health: 5
}

class Fish

  attr_accessor :health

  def initialize(name, health = 5)
    @name = name
    @health = health
  end

  #getting
  # def get_health
  #   return @healtSh
  # end

  def health=(new_health)
    @health = new_health
  end

  #setting
  # def set_health(new_health)
  #   @health = new_health
  # end

  def damage(amount)
    @health = @health - amount
  end

end

class Shark

  def initialize(name, health = 200, speed = 20)
    @name = name
    @health = health
    @speed = speed
  end

  def accelerate(speed)
    @speed += speed
  end

end


binding.pry
