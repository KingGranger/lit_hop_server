class AddEndLocationToJourney < ActiveRecord::Migration[5.1]
  def change
    add_column :journeys, :end_location, :string
  end
end
