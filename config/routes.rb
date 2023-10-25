Rails.application.routes.draw do
  resources :locations
  get 'hello_world/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'hello_world#index'
end
