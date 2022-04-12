class CreateRoundScores < ActiveRecord::Migration[7.0]
  def change
    create_table :round_scores do |t|
      t.string :course
      t.boolean :eighteen_holes
      t.date :date
      t.integer :total_strokes
      t.integer :total_par
      t.integer :total_score
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
