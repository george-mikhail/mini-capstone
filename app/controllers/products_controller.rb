class ProductsController < ApplicationController

  def index
    @first_product = Product.first
    @products = Product.all

    render "index.html.erb"

  end

  def get_camel
    @products = Product.all 
    @first_product = Product.first
    @camel_image = Product.first
    render "camel.html.erb"
  end

  def new
    render "new.html.erb"

  end

  def create
    product = Product.create(name: params['name'],
      price: params['price'],
      image: params['image'],
      description: params['description']
      )
    flash[:success] = "Product successfully created!"
    redirect_to "/products/#{product.id}"

  end


  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id:product_id)
    product.name = params[:name]
    product.price = params[:price]
    product.image = params[:image]
    product.description = params[:description]
    product.save
    flash[:success] = "Product successfully updated!"
    redirect_to "/products/#{product.id}"

  end

  def destory
    product_id = params[:id]
    product = Product.find_by(id:product_id)
    product.destory
    flash[:warning] = "Product successfully deleted!"
    redirect_to "/products"

  end







end
