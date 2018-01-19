class CreateJourneys < ActiveRecord::Migration[5.1]
  def change
    create_table :journeys do |t|
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
