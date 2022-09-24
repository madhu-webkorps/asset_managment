class ProductsController < ApplicationController 
@@user = 0
  def new 
    @product = ProductField.all.where(user_id: current_user.id)
    # @product = Product.new
  end

  # def additem
  #   @product = ProductField.all.where(user_id: current_user.id)
  # end

  def create
    hash = Hash.new
    params.each do |key , value |
      @@user = params[:authenticity_token]
      if key == "controller"
        break
      else
       hash.store(key,value)
      end
    end
    debugger
    product_params = hash
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save!
        format.html { redirect_to root_url , notice: "product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  #show all product
  def allproduct
    debugger
    @products = Product.where(:authenticity_token == @@user)
     

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
