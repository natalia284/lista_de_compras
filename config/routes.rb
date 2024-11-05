Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "products#index"
  resources :products
end