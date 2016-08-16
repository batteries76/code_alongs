Rails.application.routes.draw do

  get '/' => 'pages#home'

  get '/drunk' => 'pages#drunk'

  get '/donate' => 'pages#donate'

  post 'donate' => 'pages#take_money'

end
