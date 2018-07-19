class AddPriceLevelToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :price_level, :integer
  end
end
