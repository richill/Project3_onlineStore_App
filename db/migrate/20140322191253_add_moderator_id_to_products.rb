class AddModeratorIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :moderator_id, :integer
  end
end
