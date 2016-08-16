secret = 42

puts 'please enter a number'
guess = gets.chomp
name = 'dt'

puts('Your guess is ' + guess.to_s)
puts "your name is #{name} guess is #{guess}" #interpolation

# if guess.to_i == secret
#   puts 'blah'
# else
#   puts 'you fail life'
# end

while (guess.to_i != secret)
  puts('you fail life')
  if (guess.to_i<secret.to_i)
    puts 'guess higher'
  else
    puts 'guess lower'
  end
  puts('guess again')
  guess = gets.chomp.to_i
end
