class ProductFieldsController < ApplicationController
  def index
  
    @product_field = ProductField.all.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @product = ProductField.new
  end

def create
  @product = ProductField.create(product_field_params)
  respond_to do |format|
    
    @product.user_id = current_user.id

    if @product.save!
      format.html { redirect_to product_fields_url(@product), notice: "User was successfully created." }
      format.json { render :show, status: :created, location: @user }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end

  def destroy
  end

  def product_field_params
    params.require(:product_field).permit(:field_type, :field_name)
  end
  
end
