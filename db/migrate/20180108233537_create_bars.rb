class CreateBars < ActiveRecord::Migration[5.1]
  def change
    create_table :bars do |t|
      t.datetime :open_time
      t.datetime :close_time
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
