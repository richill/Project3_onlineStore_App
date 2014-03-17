class CreateProductmains < ActiveRecord::Migration
  def change
    create_table :productmains do |t|
      t.string :name

      t.timestamps
    end
  end
end
