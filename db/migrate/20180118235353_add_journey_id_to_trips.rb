class AddJourneyIdToTrips < ActiveRecord::Migration[5.1]
  def change
    add_reference :trips, :journey, foreign_key: true
  end
end
