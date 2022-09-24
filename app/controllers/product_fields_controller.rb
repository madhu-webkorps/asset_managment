class ProductFieldsController < ApplicationController
  def index
    @product_fields = ProductField.all.where(user_id: current_user.id)
  end

  def new
    @product_field = ProductField.new
  end

def create
  @product_field= ProductField.create(product_field_params)
  respond_to do |format|
    
    @product_field.user_id = current_user.id

    if @product_field.save!
      format.html { redirect_to product_fields_url(@product_field), notice: "User was successfully created." }
      format.json { render :show, status: :created, location: @user }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @product_field = ProductField.find(params[:id])
  @product_field.destroy

  respond_to do |format|
    format.html { redirect_to root_url, notice: "Product field was successfully destroyed." }
    format.json { head :no_content }
  end
end



  def product_field_params
    params.require(:product_field).permit(:field_type, :field_name)
  end
  
end
