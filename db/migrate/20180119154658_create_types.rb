class CreateTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :name
      t.belongs_to :bar, foreign_key: true

      t.timestamps
    end
  end
end
