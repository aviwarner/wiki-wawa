class RemovePriceFromAmounts < ActiveRecord::Migration[5.1]
  def change
    remove_column :amounts, :price
  end
end
