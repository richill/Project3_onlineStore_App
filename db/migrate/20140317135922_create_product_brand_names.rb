class CreateProductBrandNames < ActiveRecord::Migration
  def change
    create_table :product_brand_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
