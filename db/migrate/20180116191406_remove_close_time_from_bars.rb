class RemoveCloseTimeFromBars < ActiveRecord::Migration[5.1]
  def change
    remove_column :bars, :close_time, :datetime
  end
end
