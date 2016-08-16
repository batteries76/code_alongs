class DishTypesController < ApplicationController

  def index
    @dish_types = DishType.all
  end

  def new
  end

  def create
    dish_types = DishType.new
    dish_types.name = params[:name]
    dish_types.image_url = params[:image_url]
    if dish_types.save
      redirect_to '/'
    else
      # render just the template
      render :new
    end
  end

  def show
    @dish_types = DishType.find(params[:id])
  end

  def edit
    @dish_types = DishType.find(params[:id])
  end

  def update
    @dish_types = DishType.find(params[:id])
    @dish_types.name = params[:name]
    @dish_types.image_url = params[:image_url]

    if @dish_types.save
      redirect_to '/'
    else
      render :edit
    end
  end

  def destroy
    @dish_types = DishType.find(params[:id])
    if @dish_types.destroy
      redirect_to '/'
    else
      render :show
    end
  end
end
