require 'sinatra'
require 'pry'
require 'yahoofinance'
require 'sinatra-reloader'

get '/' do
  erb :index
end

get '/ticker' do
  result = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:ticker])

  @last_trade = result[ params[:ticker] ].lastTrade

  result.inspect
end
