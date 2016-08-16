
require 'sinatra'
require 'pg'
require 'sinatra/reloader'
require 'pry'

require './db_config'
require './models/dish'
require './models/dish_type'
require './models/comment'
require './models/user'

enable :sessions
# def run_sql(sql)
#   db = PG.connect(dbname: 'goodfoodhunting')
#   results = db.exec(sql)
#   db.close
#   return results
# end

helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end

after do
  ActiveRecord::Base.connection.close
end

# list all dishes
get '/' do # request
  @dish_types = DishType.all
  if params[:id]
    @dishes = Dish.where(dish_type_id: params[:id])
  else
    @dishes = Dish.all
  end
  erb :index
end

# show new dish form
get '/dishes/new' do
  redirect to'/session/new' if !logged_in?
  @dish_types = DishType.all
  erb :new
end

# create a new dish
post '/dishes' do
  dish = Dish.new
  dish.image_url = params[:image_url]
  dish.name = params[:name]
  dish.dish_type_id = params[:dish_type_id]
  dish.save
  redirect to '/'
end

# delete a dish
delete '/dishes/:id' do
  dish = Dish.find(params[:id])
  dish.destroy
  redirect to '/'
end

# show single dish
get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  @comments = @dish.comments
  erb :show
end


# update existing dish
get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  @dish_types = DishType.all
  erb :edit
end

patch '/dishes/:id' do
  #update existing dish from db
#  sql = "UPDATE dishes SET name = '#{ params[:name] }', image_url = '#{ params[:image_url] }' WHERE id = #{ params[:id] };"
  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
  redirect to '/'
end

post '/dishes/:dish_id/comments' do
  comment = Comment.new
  comment.body = params[:body]
  comment.dish_id = params[:dish_id]
  comment.save
  redirect to "/dishes/#{ params[:dish_id] }"
end

get '/session/new' do
  erb :login
end

post '/session' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
#    return 'win'
    session[:user_id] = user.id
    redirect to '/'
  else
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect to '/'
end
