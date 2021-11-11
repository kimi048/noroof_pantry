class AddColumnWhenAndWhichToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :when, :integer, default: 0
    add_column :foods, :which, :string
  end
end
