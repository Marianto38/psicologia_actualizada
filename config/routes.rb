Rails.application.routes.draw do
  resources :appointments

  # config/routes.rb
  get '/react-app', to: 'react_app#index'

# config/routes.rb
get '/react-app/home', to: 'react_app#home'

# config/routes.rb
namespace :api do
  resources :appointments, only: [:index, :show, :create, :update, :destroy]
end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
