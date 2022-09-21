class ProductsController < ApplicationController 

    def new 
        @product_field = ProductField.all.where(user_id: current_user.id)
        @product = Product.new
    end
end
