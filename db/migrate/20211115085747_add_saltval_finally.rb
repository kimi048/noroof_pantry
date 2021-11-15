class AddSaltvalFinally < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :saltval, :float, default: 0
  end
end
