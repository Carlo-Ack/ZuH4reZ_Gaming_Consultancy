# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load`

ActiveRecord::Schema[7.1].define(version: 2026_01_15_082432) do
  enable_extension "plpgsql"

  create_table "bfrandomizers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "player_class"
    t.string "class_specialization"
    t.string "primary_weapon"
    t.string "secondary_weapon"
    t.string "gadget_one"
    t.string "gadget_two"
    t.string "description"
  end

  create_table "consultations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "firstquestion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "consultations", "users"
end
