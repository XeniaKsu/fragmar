Rails.application.routes.draw do

  root 'listings#index'

  resources :purchases
  resources :listings
  resources :perfumes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
