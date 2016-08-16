
require 'sinatra'
require 'pg'
require 'sinatra/reloader'

def run_sql(sql)
  db = PG.connect(dbname: 'goodfoodhunting')
  results = db.exec(sql)
  db.close
  return results
end

# list all dishes
get '/' do # request
  @dishes = run_sql('SELECT * FROM dishes;')
  erb :index
end

# show new dish form
get '/dishes/new' do
  erb :new
end

delete '/dishes/:id' do
  sql = "DELETE FROM dishes WHERE id = #{ params[:id] }"
  run_sql(sql)
  redirect to '/'
end

# show single dish
get '/dishes/:id' do
  sql = "SELECT * FROM dishes where id = #{ params[:id] };"
  results = run_sql(sql)
  @dish = results.first
  erb :show
end

# create a new dish
post '/dishes' do
  sql = "INSERT INTO dishes (name, image_url) VALUES ('#{ params[:name] }','#{ params[:image_url] }');"
  run_sql(sql)
  redirect to '/'
end

# update existing dish
get '/dishes/:id/edit' do
  sql = "SELECT * FROM DISHES where id = #{ params[:id] };"
  results = run_sql(sql)
  @dish = results.first
  erb :edit
end

patch '/dishes' do
  #update existing dish from db
  sql = "UPDATE dishes SET name = '#{ params[:name] }', image_url = '#{ params[:image_url] }' WHERE id = #{ params[:id] };"
  run_sql(sql)
end
