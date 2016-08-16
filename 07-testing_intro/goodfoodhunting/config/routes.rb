Rails.application.routes.draw do
            #controller #method
  get '/' => 'dishes#index'

  get '/dishes/new' => 'dishes#new'
  post '/dishes' => 'dishes#create'

  get '/dishes/:id' => 'dishes#show'

  get '/dishes/:id/edit' => 'dishes#edit'
  put '/dishes/:id' => 'dishes#update'

  delete '/dishes/:id' => 'dishes#destroy'

  get '/dish_types' => 'dish_types#index'
  get '/dish_types/:id' => 'dish_types#show'

  get '/api/dishes' => 'api/dishes#index'
  post '/api/dishes' => 'api/dishes#create'
  post '/api/likes' => 'api/likes#create'
  get 'api/dishes/:id' => 'api/dishes#show'

  # resources :dishes
  # resources :dish_types, only: [:index, :show]

end
