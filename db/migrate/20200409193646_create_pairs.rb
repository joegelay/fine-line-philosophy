class CreatePairs < ActiveRecord::Migration[6.0]
  def change
    create_table :pairs do |t|
      t.references :idea_one, null: false, foreign_key: true
      t.references :idea_two, null: false, foreign_key: true

      t.timestamps
    end
  end
end
