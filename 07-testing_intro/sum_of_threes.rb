

def sum_of_threes(floor=1, ceiling=10)

  sum = 0

  (floor..ceiling).each do |number|
    if number % 3 == 0
      sum += number
    end
  end

  return sum
end
