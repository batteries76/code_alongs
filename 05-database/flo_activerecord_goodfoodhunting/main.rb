
require 'sinatra'
require 'pg'
require 'sinatra/reloader'
require './db_config'
require './models/dish'
require './models/dish_type'
require './models/comment'
require './models/user'

enable :sessions

helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    if current_user
      return true
    else
      return false
    end
  end
end

# def run_sql(sql)
#   db = PG.connect(dbname: 'goodfoodhunting')
#   results = db.exec(sql)
#   db.close
#   return results
# end

# close the database connection afte every request,
# don't need to call it because the framework (sinatra)does it for you
after do
  ActiveRecord::Base.connection.close
end

# class User << ActiveRecord::Base
#   has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
#   validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
# end

# list all dish
get '/' do #request, inside the block is what I responed to the user
  # return params.inspect
  #get all dish types
  #filter my dishes based on the selected dish type id
  @dish_types = DishType.all
  # if user pass in id as a querystring
  # behind the ?, that the infoamrtion in the URL
  if params[:id]
  #@dish = run_sql('SELECT * FROM dishes;')
    @dishes = Dish.where(dish_type_id: params[:id])
  else
    #just get all dishes
    @dishes = Dish.all
  end

  erb :index
end


# create a new dish form
get '/dishes/new' do
  redirect to '/session/new' unless logged_in?
  @dish_types = DishType.all
  erb :new
end

# create a new dish
post '/dishes' do
  # sql = "INSERT INTO dishes(name, image_url) VALUES('#{params[:name]}', '#{params[:image_url]}');"
  #
  # run_sql(sql)
  # db.exec("INSERT INTO dishes(name, image_url) VALUES('#{params[:name]}', '#{params[:image_url]}');")
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.dish_type_id = params[:dish_type_id]
  dish.save

  redirect to '/'

end

# show single dish
get '/dishes/:id' do
  # sql =("SELECT * FROM dishes WHERE id = #{params[:id]};")
  # results = run_sql(sql)
  @dish = Dish.find(params[:id])
  @comments = @dish.comments
  erb :dish_detail
end

#update existing dish

get '/dishes/:id/edit' do
  # sql = "SELECT * FROM dishes WHERE id = #{params[:id]}"
  # results = run_sql(sql) # databse retunrs a collection always in an array
  @dish = Dish.find(params[:id])
  @dish_types = DishType.all
  erb :dish_edit
end

#update existing dish
patch '/dishes/:id' do
  # sql = "UPDATE dishes SET name = '#{params[:name]}', image_url = '#{params[:image_url]}' WHERE id = #{params[:id]};"
  # run_sql(sql)

  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.dish_type_id = params[:dish_type_id]
  dish.save

  redirect to '/'
end

delete '/dishes/:id' do
  # sql = "DELETE FROM dishes WHERE id = #{params[:id]}"
  # run_sql(sql)

  dish = Dish.find(params[:id])
  dish.destroy

  redirect to '/'
end


post '/dishes/:dish_id/comments' do
  #create a comment
  comment = Comment.new
  comment.body = params[:body]
  comment.dish_id = params[:dish_id]
  comment.save

  redirect to "/dishes/#{params[:dish_id]}"

end

get '/session/new' do
  erb :login
end

post '/session' do
  user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])

      session[:user_id] = user.id

      redirect to '/'
    else
      #erb instad of redirect because we wanna keep information
      erb :login
    end
end


delete '/session' do

    session[:user_id] = nil
    redirect to '/'

end
