class AddColumnToIngredient < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :protein, :float, default: 0
    add_column :ingredients, :lipid, :float, default: 0
    add_column :ingredients, :carbon, :float, default: 0
    add_column :ingredients, :ca, :float, default: 0
    add_column :ingredients, :fe, :float, default: 0
    add_column :ingredients, :v_a, :float, default: 0
    add_column :ingredients, :v_e, :float, default: 0
    add_column :ingredients, :v_b1, :float, default: 0
    add_column :ingredients, :v_b2, :float, default: 0
    add_column :ingredients, :v_c, :float, default: 0
    add_column :ingredients, :fiber, :float, default: 0
    add_column :ingredients, :fatty, :float, default: 0
    add_column :ingredients, :salt, :float, default: 0
  end
end
