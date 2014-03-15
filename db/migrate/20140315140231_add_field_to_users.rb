class AddFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :dob, :date
    add_column :users, :gender, :string
    add_column :users, :description, :text
    add_column :users, :address, :text
    add_column :users, :postcode, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :user_image, :string
  end
end
