require 'pry'

@total = 0
@array = [1,2,3,4]

def sum_arr arr
  total = 0
  arr.each do |num|
    total = total + num.to_i
  end
  return total
end

def sum_arr_r arr, total
  val = arr.pop
  if arr.length > 0
    return sum_arr_r(arr, total+val.to_i)
  else
    return total+val
  end
end

def factorial num
  return 1 unless num>1
  return num * factorial(num-1)
end

tot1 = sum_arr(@array)
tot2 = sum_arr_r(@array, @total)
fac1 = factorial(3)

binding.pry
