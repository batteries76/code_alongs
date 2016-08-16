require 'sinatra'

get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/donate' do
  erb :donate
end

get '/hello/:name' do
  return "hello there #{params[:name]}"
end

get '/calculate/:a/:b' do
  result = params[:a].to_i + params[:b].to_i
  return "result = #{result}"
end

get '/contact' do
  erb :contact
end

get '/thanks' do
  "the amount you want to donate is #{ params[:amount] }"
end
