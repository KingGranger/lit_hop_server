class AddStartLocationToJourney < ActiveRecord::Migration[5.1]
  def change
    add_column :journeys, :start_location, :string
  end
end
