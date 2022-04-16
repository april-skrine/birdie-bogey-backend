class CreateTeeTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :tee_times do |t|
      t.string :golf_course
      t.string :location
      t.integer :number_of_holes
      t.date :date
      t.time :time
      t.integer :open_spots
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
