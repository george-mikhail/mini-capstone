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



end
