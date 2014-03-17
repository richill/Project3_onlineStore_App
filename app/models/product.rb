class Product < ActiveRecord::Base
  attr_accessible :colour_id, :description, :name, :price, :product_brand_name_id, :product_type_id, :size_id, :productmain_id, :stock

  belongs_to :product_type 
  belongs_to :product_brand_name
  belongs_to :productmain
  belongs_to :size
end
