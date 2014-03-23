class Product < ActiveRecord::Base
  attr_accessible :colour_id, :description, :name, :price, :product_brand_name_id, :product_type_id, :size_id, :productmain_id, :colour_id, :stock, :product_image, :moderator_id

  belongs_to :product_type 
  belongs_to :product_brand_name
  belongs_to :productmain
  belongs_to :size
  belongs_to :colour

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  mount_uploader :product_image, ImageUploader

  acts_as_commentable

  # scope :displayed, where("displayed_at is not null")
  # scope :moderated_by, Proc.new { |moderator| where("moderator_id = ?", moderator.id) }


  # def displayed?
  #   !!displayed_at
  # end

  # def diplayed!(moderator)
  #   raise "cannot display unsaved product" if changes.any?
  #   raise "already displayed" if diplayed?
  #   update_attributes!(moderator_id: moderator.id, displayed_at: Time.now)
  # end




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

  # def needs_both_displayed_at_and_moderator_or_neither
  #   if (moderator_id || displayed_at) && (displayed_at.nil? || Product.find_by_id(moderator_id).nil?)
  #     errors.add :base, "needs both a 'displayed at' date and a moderator if either are given"
  #   end
  # end
end
