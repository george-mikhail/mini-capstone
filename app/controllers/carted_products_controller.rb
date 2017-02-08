class CartedProductsController < ApplicationController

  def create
    product_id = params[:product_id]
    quantity = params[:quantity]
    carted_product = CartedProduct.create(
      user_id: current_user.id, 
      quantity: quantity, 
      product_id: product_id,
      status: "carted"
    )

    flash[:success] = "Carted Product Successfully created"

    redirect_to "/products" 
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
  end

  def index
    if current_user.carted_products.where(status: "carted").any?
      @carted_products = current_user.carted_products.where(status: "carted")
     else
       flash[:warning] = "You have no items in your cart"
       redirect_to "/"
    end


  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")

    flash[:success] = "Product Removed"
    redirect_to "/carted_products"

    
  end



    
 
end
