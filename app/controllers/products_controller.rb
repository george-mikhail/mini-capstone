class ProductsController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show, :search]

  def index
    if session[:count] == nil
      session[:count] = 0
    end

    session[:count] += 1
    @visit_count = session[:count]
    @first_product = Product.first
    @products = Product.all

    if params[:sort]
      @products = Product.all.order(params[:sort] => params[:sort_order])
    end

    if params[:category]
      @products = Category.find_by(name: params[:category]).products
    end
    
    render "index.html.erb"

  end

  def get_camel
    @products = Product.all 
    @first_product = Product.first
    @camel_image = Product.first
    render "camel.html.erb"
  end

  def search

    search_term = params[:search]
    @products = Product.where("name LIKE ?", "%#{search_term}%")
    render :index
  end

  def new
    @product = Product.new

  end

  def create
    @product = Product.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier]['supplier_id']
      )

    if @product.save
      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}"
    else
      render :new
    end
    # @product.images.create(url: params[:image], product_id: @product.id)

  end


  def show
    @product = Product.find_by(id: params[:id])
    #returns single instance supplier hash
    @supplier = @product.supplier
    #returns array with image hashes
    @images = @product.images
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
