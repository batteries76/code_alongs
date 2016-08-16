class PagesController < ApplicationController

  def magic_8
    possible_results = ["result1", "result2", "result3"]
    if params[:question]
      @answer = possible_results[rand(0..2)]
    end
  end

  def rock_paper_scissors_play567
    arr = ["rock", "paper", "scissors"]
    @choice = arr.sample
    @throw = params[:throw]
  end

  def secret_number
    if params[:result]
      if params[:result] == "4"
        @response = "You win!"
      else
        @response = "You lose."
      end
    end
  end

end
