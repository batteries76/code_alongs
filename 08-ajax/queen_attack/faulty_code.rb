white_arr = @white.split('')
black_arr = @black.split('')

black_arr.each do |char|
  num_arr = ['0','1','2','3','4','5','6','7','8','9']
  if num_arr.include?(char)
    @new_black_arr.push(char.to_i)
  end
end

white_arr.each do |char|
  num_arr = ['0','1','2','3','4','5','6','7','8','9']
  if num_arr.include?(char)
    @new_white_arr.push(char.to_i)
  end
end
