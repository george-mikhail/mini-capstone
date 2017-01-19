class ProductsController < ApplicationController

  def get_products
    @first_product = Product.first
    @products = Product.all

    render "products.html.erb"

  end

  def get_camel
    @products = Product.all 
    @first_product = Product.first
    @camel_image = Product.first
    render "camel.html.erb"
  end



end
