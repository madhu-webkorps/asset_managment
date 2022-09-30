Rails.application.routes.draw do 
  resources :items
  devise_for :users
  
  root 'product_fields#index'
  resources  :product_fields
  resources  :products
  get "/allproduct" ,to: "products#allproduct"
  # get "/haml" ,to: "products#first"
  
end
