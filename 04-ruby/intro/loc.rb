#p(ARGV) # programmer's puts


#puts ARGV[0]
#filename = gets.chomp

file = IO.read(ARGV[0])

#puts(file)

loc = file.split("\n").length

puts(loc)
