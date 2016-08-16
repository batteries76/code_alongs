require 'sinatra'
require 'pry'
require 'httparty'
require 'sinatra/reloader'

#- [Dynamic URLs in Sinatra] #(http://blog.teamtreehouse.com/ruby-sinatra-dynamic-urls-tutorial)
#- [Open movie database API]#(http://www.omdbapi.com/)

get '/' do
  erb :index
end

get '/title' do
#  @results = HTTParty.get("http://omdbapi.com/?t=once")
  @param_val = params[:movie]
  @result = HTTParty.get("http://omdbapi.com/?s=#{params[:movie]}")

  erb :about
end

#binding.pry
#result.inspect
