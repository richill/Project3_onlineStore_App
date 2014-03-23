class CreateMenstores < ActiveRecord::Migration
  def change
    create_table :menstores do |t|

      t.timestamps
    end
  end
end
