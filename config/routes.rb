Rails.application.routes.draw do
  root 'top#main'
  get 'top/main'
  resources :products, only: [:index, :new, :create, :destroy]
  resources :cart_items, only: [:new, :create, :destroy]
  post 'cart_items/new'
  resources :carts, only: [:show]
  post 'carts/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
