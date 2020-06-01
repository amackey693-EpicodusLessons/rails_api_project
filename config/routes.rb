Rails.application.routes.draw do
  resources :users
    resources :sessions
  end
end
