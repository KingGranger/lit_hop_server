class AddPlaceIdToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :place_id, :string
  end
end
