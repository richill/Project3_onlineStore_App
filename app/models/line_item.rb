class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :quantity, :product_image

  belongs_to :product
  belongs_to :cart


  def total_price 
    product.price * quantity
  end
end
