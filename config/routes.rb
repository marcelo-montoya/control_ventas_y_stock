Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :orders
  resources :products
  resources :costumers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
