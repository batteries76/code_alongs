class DishTypeController < ApplicationController

  def index
    @dish_types = DishType.all
  end

end
