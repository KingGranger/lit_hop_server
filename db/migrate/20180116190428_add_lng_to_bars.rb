class AddLngToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :lng, :float
  end
end
