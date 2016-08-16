require 'pry'

class Queens

  attr_reader :white, :black

  def initialize ( input = { white: [0,3], black: [7,3] } )

    @white = input[:white]
    @black = input[:black]

    if @white == @black
      raise ArgumentError
    end

    @board = []
    8.times do
      row = ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O']
      @board.push(row)
    end

    @board[@white[0]][@white[1]] = 'W'
    @board[@black[0]][@black[1]] = 'B'

  end

  def to_s
    str = ""
    i = 0
    8.times do
      j = 0
      8.times do
        str += @board[i][j]
        if j<7
          str += ' '
        else
          str += "\n"
        end
        j = j + 1
      end
    i = i + 1
    end
    str_arr = str.split('')
    str_arr.pop
    str_arr.join
  end

  def attack?

    diff1 = @white[0] - @black[0]
    diff2 = @white[1] - @black[1]

    if diff1 == 0
      return true
    elsif diff2 == 0
      return true
    elsif diff1 == diff2
      return true
    elsif diff1 == (diff2*-1)
      return true
    else
      return false
    end
  end

#binding.pry
end
