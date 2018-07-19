class RemoveStartTimeFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :start_time, :datetime
  end
end
