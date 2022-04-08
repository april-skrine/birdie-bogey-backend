class CreateRoundScores < ActiveRecord::Migration[7.0]
  def change
    create_table :round_scores do |t|
      t.string :course
      t.integer :number_of_holes
      t.integer :date
      t.integer :par
      t.integer :total_score
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
