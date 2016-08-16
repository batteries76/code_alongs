# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dish.destroy_all

names = ["harry's", "johan's"]
adjectives = ['spicy', 'large', 'tiny', 'feral', 'odd']
food = ['cake', 'pudding', 'sandwich', 'soup', 'burger']

10.times do |number|
  dish = Dish.new
  dish.name = "#{names.sample} #{adjectives.sample} #{food.sample}"
  dish.image_url = 'https://s-media-cache-ak0.pinimg.com/736x/a6/db/07/a6db07dd595fb0c8930e8bde502956fd.jpg'
  dish.save
end
