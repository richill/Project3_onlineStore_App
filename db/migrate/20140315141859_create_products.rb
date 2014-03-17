class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :product_type_id
      t.decimal :price, precision: 8, scale: 2
      t.integer :product_brand_name_id
      t.integer :size_id
      t.integer :colour_id
      t.integer :stock
      t.text :description

      t.timestamps
    end
  end
end
