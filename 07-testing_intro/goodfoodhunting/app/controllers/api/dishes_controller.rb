module Api
  class DishesController < ApplicationController

    def index
      @dishes = Dish.all
      render json: @dishes.to_json
    end

    def create
      dish = Dish.new
      dish.name = params[:name]
      dish.image_url = params[:image_url]
      if dish.save
        render json: dish.to_json(methods: :like_count), status: 201
      else
        # render just the template
        render json: dish.errors.to_json
      end
    end

    def show
      @dishes = Dish.all
      dish = @dishes.find_by_id(params[:id])
      render json: dish.to_json, status: 200
    end

  end
end
