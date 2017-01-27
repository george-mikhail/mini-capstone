class Product < ApplicationRecord

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
