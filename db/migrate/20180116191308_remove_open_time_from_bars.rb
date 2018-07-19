class RemoveOpenTimeFromBars < ActiveRecord::Migration[5.1]
  def change
    remove_column :bars, :open_time, :datetime
  end
end
