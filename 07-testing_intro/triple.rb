
def triple(number)
  return number * 3
end

if triple(3) == 9
  puts 'yay'
else
  puts 'nay'
end

def testing(expected, actual, message)
  if expected == actual
    puts "pass: #{message}"
  else
    puts "pass: #{message}"
  end
end

testing(9, triple(3), "tripling 3")
testing(15, triple(5), "tripling 3")
