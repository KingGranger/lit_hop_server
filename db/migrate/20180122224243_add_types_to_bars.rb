class AddTypesToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :types, :string, array: true, default: []
  end
end
