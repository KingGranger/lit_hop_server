class AddOpenToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :open, :boolean
  end
end
