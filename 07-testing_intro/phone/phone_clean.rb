require 'pry'

def number number_in
  stripped_num = []
  phone_num_arr = number_in.split('')
  the_numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']
  discard = []

#  puts phone_num_arr

  phone_num_arr.each do |c|
    if the_numbers.include? c
      stripped_num.push(c)
    else
      discard.push(c)
    end
  end
#      if
#  puts stripped_num
  return stripped_num.join

end
binding.pry
