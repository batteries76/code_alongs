
a = ["Anil", "Erik", "Jonathan"]

puts '   1a'
puts a[1]

puts '   1b'
a.push("Matt")
puts a

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts '   2a'
puts h[1]

puts '   2b'
puts h[:two]

puts '   2c'
puts h["two"]

puts '   2d'
h[3] = "three"
puts h

puts '   2e'
h[:four] = 4
puts h

is = {true => "It's true!", false => "It's false"}

puts '   3a'
puts is[2 + 2 == 4]

puts '   3b'
puts is["Erik" == "Jonathan"]

puts '   3c'
puts is[9 > 10]

puts '   3d'
puts is[0]

puts '   3e'
is["Erik"]

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

puts '   4a'
puts users["Jonathan"][:twitter]

puts '   4b'
users["Erik"][:favorite_numbers].push(7)
puts users

puts '   4c'
users["Matt"] = {:twitter => "batteries76", :favorite_numbers => [76, 41, 17, 71]}
puts users

puts '   4d'
puts users["Erik"][:favorite_numbers].sort.first

puts '   4e'
new_arr = []
users["Anil"][:favorite_numbers].each do |num|
  if num.even?
    new_arr.push(num)
  end
end
puts new_arr

puts '   4f'
big_arr = []
users.each do |key, value|
#  puts key
  # Equal to the NAME of the user.
#  puts value
  # Equal to the HASH of the user.
  value[:favorite_numbers].each do |num|
    big_arr.push(num)
  end
end
puts big_arr

puts '   4g'
puts '   4h'
