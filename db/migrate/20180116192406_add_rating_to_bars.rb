class AddRatingToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :rating, :float
  end
end
