class AdminsController < ApplicationController

    def index
      @users = User.all.where(role: :user) 
    end

    def  products
      @products = Product.all
      @id = params[:id]
    end

    def productFields
      @product_fields = ProductField.where(user_id: params[:id] )
    end
    

end
