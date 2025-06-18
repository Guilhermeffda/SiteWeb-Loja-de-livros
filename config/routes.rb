

Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  controller :session do 
    get 'login' => :new
    posy 'login' => :create
    get 'logout' => :destroy
  end

  get "sessions/create"
  get "sessions/destroy"
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products 
  # Define your application routes per the DSL in
  # https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
