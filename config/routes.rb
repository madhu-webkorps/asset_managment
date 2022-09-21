Rails.application.routes.draw do 
  devise_for :users
  
  root 'product_fields#index'
  resources  :product_fields
  resources  :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
