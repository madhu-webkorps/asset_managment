Rails.application.routes.draw do 
  resources :items
  devise_for :users
  
  root 'product_fields#index'
  resources  :product_fields
  resources  :products
  get "/allproduct" ,to: "products#allproduct"
 
  get "/product_with_user/:id" ,to: "admins#products" ,as: "user_products"
  # get "/haml" ,to: "products#first"
  resources :admins
  get 'product_fields_by_user/:id' , to: "admins#productFields" ,as: "user_fields"
  
end
