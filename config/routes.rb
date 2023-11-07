Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create, :destroy]
  root 'products#index'
  post 'products/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
