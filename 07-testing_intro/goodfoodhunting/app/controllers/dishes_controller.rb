class DishesController < ApplicationController
  #automagically looks for a template with the same name as method
  def index
    @dishes = Dish.all
    # render json: @dishes.to_json
  end

  def new
  end

  # def raw
  #   @dishes = Dish.all
  #   render json: @dishes.to_json
  # end

  def create
    dish = Dish.new
    dish.name = params[:name]
    dish.image_url = params[:image_url]
    if dish.save
      redirect_to '/'
    else
      # render just the template
      render :new
    end
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.name = params[:name]
    @dish.image_url = params[:image_url]

    if @dish.save
      redirect_to '/'
    else
      render :edit
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    if @dish.destroy
      redirect_to '/'
    else
      render :show
    end
  end
end
