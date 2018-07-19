class AddLatToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :lat, :float
  end
end
