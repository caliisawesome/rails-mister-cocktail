class RemoveQuantityFromDoses < ActiveRecord::Migration[5.1]
  def change
    remove_column :doses, :quantity
  end
end
