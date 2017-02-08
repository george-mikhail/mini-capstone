class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  

  def tax

    price.to_f * 0.09

  end




  def sale_message
    if price.to_f < 2
      return "discount item"
    else
      return "everyday value"
    end

  end

  def total 
    price.to_f + tax
  end







end
