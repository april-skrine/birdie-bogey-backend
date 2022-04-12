# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_06_135655) do
  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "tee_time_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tee_time_id"], name: "index_comments_on_tee_time_id"
  end

  create_table "round_scores", force: :cascade do |t|
    t.string "course"
    t.boolean "eighteen_holes"
    t.date "date"
    t.integer "total_strokes"
    t.integer "total_par"
    t.integer "total_score"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_round_scores_on_user_id"
  end

  create_table "tee_times", force: :cascade do |t|
    t.string "golf_course"
    t.string "location"
    t.integer "number_of_holes"
    t.time "time"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tee_times_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "tee_times"
  add_foreign_key "round_scores", "users"
  add_foreign_key "tee_times", "users"
end
