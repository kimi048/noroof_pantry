class AddFoodIdColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :food_id, :integer
  end
end
