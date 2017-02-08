Rails.application.routes.draw do

  get "/products" => "products#index"

  post "/search" => "products#search"

  get "/camel" => "products#get_camel"

  get "products/new" => "products#new"

  post "/products" => "products#create"

  get "/products/:id" =>
  "products#show"

  get "/products/:id/edit" => "products#edit"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destory"

  get "/images/new" => "images#new"

  post "/images" => "images#create"

  get "/signup" => "users#new"

  post "/users" => "users#create"

  get "/login" => "sessions#new"

  post "/login" => "sessions#create"

  get "/logout" => "sessions#destroy"
  
  post '/orders' => 'orders#create'
  
  get '/orders/:id' => 'orders#show'

  post '/carted_products' => 'carted_products#create'

  get '/carted_products' => 'carted_products#index'

  get '/cart' => "carted_products#index"

  delete '/carted_produts/:id' => 'carted_products#destroy'



end
