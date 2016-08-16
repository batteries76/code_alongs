module Api
  class LikesController < ApplicationController

    def create
      @dish = Dish.find(params[:dish_id])

#      binding.pry

      @like = Like.new
      @like.user_id = User.first.id
      @like.dish_id = @dish.id
      @like.save

      data = { like_count: @dish.likes.count }

      render json: data, status: 201
    end

  end
end
