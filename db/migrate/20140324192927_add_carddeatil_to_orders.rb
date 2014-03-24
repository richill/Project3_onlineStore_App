class AddCarddeatilToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :card_number, :integer
    add_column :orders, :card_expiry_date, :date
    add_column :orders, :cv_number, :integer
  end
end
