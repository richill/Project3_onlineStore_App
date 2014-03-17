class AddProductmainToProducts < ActiveRecord::Migration
  def change
    add_column :products, :productmain_id, :integer
  end
end
