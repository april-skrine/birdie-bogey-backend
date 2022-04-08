class CreateHoleScores < ActiveRecord::Migration[7.0]
  def change
    create_table :hole_scores do |t|
      t.integer :hole_number
      t.integer :par
      t.integer :score
      t.references :round_score, null: false, foreign_key: true

      t.timestamps
    end
  end
end
