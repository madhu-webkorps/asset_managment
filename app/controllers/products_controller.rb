class ProductsController < ApplicationController 
  
@@user = 0
  def new 
    @product = ProductField.all.where(user_id: current_user.id)
    @user_id = ProductField.pluck(:user_id)[0]
    
    # @product = Product.new
  end

  # def additem
  #   @product = ProductField.all.where(user_id: current_user.id)
  # end

  def create

    hash = Hash.new
    params.each do |key , value |
      if key == "authenticity_token"
        break
      else
       hash.store(key,value)
      end
    end
    
    product_params = hash
    product_params
   
    # @product = Product.new(product_params)
    id = User.user_with_id (current_user.id)
    product = Product.product_with_user(id , product_params)
    puts product
    
    
    respond_to do |format|
    
    #   
        format.html { redirect_to root_url , notice: "product was successfully created." }
    #     
    end
  end

  #show all product
  def allproduct
    @products = Product.all
  end

  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end


end
