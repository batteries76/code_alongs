require 'pry'

class Phone

  def initialize num_str
    @number_in = num_str
  end

  def number
    stripped_num = []
    phone_num_arr = @number_in.split('')
    the_numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']
    discard = []

    phone_num_arr.each do |c|
      if the_numbers.include? c
        stripped_num.push(c)
      else
        discard.push(c)
      end
    end

    if stripped_num.length == 11
      if stripped_num[0] == '1'
        stripped_num.shift
      else
        stripped_num = ['0','0','0','0','0','0','0','0','0','0']
      end
    end

    if stripped_num.length == 9
      stripped_num =  ['0','0','0','0','0','0','0','0','0','0']
    end

    return stripped_num.join
  end

  def area_code
    num_arr = @number_in.split('')
    area_code_arr = num_arr[0..2]
    area_str = area_code_arr.join
  end

  def to_s
    num_arr = @number_in.split('')
    num_arr.unshift('(')
    num_arr.insert(4, ')', ' ')
    num_arr.insert(9, '-')
    num_arr.join
  end
#binding.pry
end
