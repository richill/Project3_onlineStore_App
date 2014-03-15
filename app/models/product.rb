class Product < ActiveRecord::Base
  attr_accessible :colour_id, :description, :name, :price, :productBrandName_id, :productType_id, :size_id, :stock
end
