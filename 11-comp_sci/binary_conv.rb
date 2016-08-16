require 'pry'


def conv_num str
  total = 0
  str_arr = str.split('')
  while str_arr.length > 0
    number = str_arr.shift.to_i
    if number == 1
      total = total + 2**(str_arr.length)
    end
  end
  return total
end



binding.pry
