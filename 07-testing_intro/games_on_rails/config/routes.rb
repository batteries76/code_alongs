Rails.application.routes.draw do

  get '/' => 'pages#index'

  get '/mag8/none' => 'pages#magic_8'

  get 'rock_paper_scissors' => 'pages#rock_paper_scissors_playhhh'

  post '/rock_paper_scissors' => 'pages#rock_paper_scissors567'

  get '/secret_number' => 'pages#secret_num'

  post '/mag8/answer' => 'pages#magic_8'

  post '/secret_num' => 'pages#secret_num'

end
