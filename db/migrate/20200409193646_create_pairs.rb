class CreatePairs < ActiveRecord::Migration[6.0]
  def change
    create_table :pairs do |t|
      t.references :idea_one
      t.references :idea_two

      t.timestamps
    end
  end
end
