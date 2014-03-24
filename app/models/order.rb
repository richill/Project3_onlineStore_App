class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type, :user_id, :card_number, :card_expiry_date, :cv_number

  belongs_to :user
  has_many :line_items, dependent: :destroy

  validates :name, :address, :email, presence: true
  # validates :pay_type, inclusion: PAYMENT_TYPES
 
  PAYMENT_TYPES = [ "Visa (2.95% Charge: $1.48)", 
                    "MasterCard (2.98% Charge: $1.49)",
                    "Visa Debit",
                    "Maestro",
                    "Visa Electron (UKE)",
                    "American Express (1.52% Charge: $0.78)"]

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
