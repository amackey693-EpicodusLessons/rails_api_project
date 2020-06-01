Rails.application.routes.draw do
  root to: 'users#index'
  
  resources :user

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end

