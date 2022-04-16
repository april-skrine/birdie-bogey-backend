class CreateUserTeeTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_tee_times do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tee_time, null: false, foreign_key: true

      t.timestamps
    end
  end
end
