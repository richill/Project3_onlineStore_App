class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :productType_id
      t.decimal :price
      t.integer :productBrandName_id
      t.integer :size_id
      t.integer :colour_id
      t.integer :stock
      t.text :description

      t.timestamps
    end
  end
end
