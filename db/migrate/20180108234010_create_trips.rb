class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :start_location
      t.string :end_location
      t.belongs_to :user, foreign_key: true
      t.belongs_to :bar, foreign_key: true

      t.timestamps
    end
  end
end
