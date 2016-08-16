class PagesController < ApplicationController

  def home
  end

  def drunk
  end

  def donate
  end

  def take_money
    render text: 'thanks for $' + params[:amount].to_s
  end

end
