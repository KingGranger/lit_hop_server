class RemoveUserIdFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_reference :trips, :user, foreign_key: true
  end
end
