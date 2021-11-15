class DropSaltAddSaltval < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :salt
    add_column :ingredients, :saltval, :float
  end
end
