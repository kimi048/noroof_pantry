class ChangeColumnDefaultToInredientsSaltval < ActiveRecord::Migration[6.1]
  def change
    change_column_default :ingredients, :saltval, 0
  end
end
