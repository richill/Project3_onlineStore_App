class Product < ActiveRecord::Base
  attr_accessible :colour_id, :description, :name, :price, :product_brand_name_id, :product_type_id, :size_id, :productmain_id, :colour_id, :stock

  belongs_to :product_type 
  belongs_to :product_brand_name
  belongs_to :productmain
  belongs_to :size
  belongs_to :colour

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item


  private
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
end
