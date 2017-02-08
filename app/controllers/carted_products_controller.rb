class CartedProductsController < ApplicationController

 #user_id, product_id, quantity, status, order_id
  def index
    #show all carted products where user_id = current_user.id && where status = "carted"
    if current_user.carted_products.where(status: "carted").any?
      @carted_products = current_user.carted_products.where(status: "carted")
    else
      flash[:warning] = "You have no items in your cart!"
      redirect_to "/products"
    end

  end

  def create
    product_id = params[:product_id]
    quantity = params[:quantity]
    carted_product = CartedProduct.create(
      user_id: current_user.id, 
      quantity: quantity, 
      product_id: product_id,
      status: "carted"
    )

    flash[:success] = "Item Successfully added to Cart"
    redirect_to "/products" 
  end

  def destroy
    #locate product to "delete", change status to "removed"
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")

    flash[:success] = "Product Removed"
    redirect_to "/carted_products"
  end



    
 
end
