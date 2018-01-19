class RemoveEndTimeFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :end_time, :datetime
  end
end
