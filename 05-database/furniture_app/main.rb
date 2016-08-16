
require 'sinatra'
require 'pg'
require 'sinatra/reloader'
require 'pry'

require './db_config'

require './models/item'
require './models/discussion'
require './models/request'
require './models/user'

enable :sessions

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

get '/signup' do
    # redirect to 'session/new' if !logged_in?
    erb :signup
end

#sign in / new user
post '/signup' do
  user = User.new
  user.email = params[:email]
  user.password = params[:password]
  user.save
  redirect to '/session/new'
end

# list all pieces of furniture
get '/' do # request
  @items = Item.all
  erb :index
end

# show new item form
get '/item/new' do
  redirect to '/session/new' if !logged_in?
  erb :new
end

# log a new item
post '/item' do
  item = Item.new
  item.image_path = params[:image_url]
  item.name = params[:name]
  item.save
  redirect to '/'
end

# delete an item
delete '/item/:id' do
  item = Item.find(params[:id])
  item.destroy
  redirect to '/'
end

# show single item
get '/item/:id' do
  @item = Item.find(params[:id])
#  @comments = @dish.comments
  erb :show
end

# update existing item
get '/item/:id/edit' do
  @item = Item.find(params[:id])
  erb :edit
end

patch '/item/:id' do
  item = Item.find(params[:id])
  item.name = params[:name]
  item.image_url = params[:image_path]
  item.save
  redirect to '/'
end

# post '/item/:id/comments' do
#   comment = Comment.new
#   comment.body = params[:body]
#   comment.dish_id = params[:dish_id]
#   comment.save
#   redirect to "/dishes/#{ params[:dish_id] }"
# end
