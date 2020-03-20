# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_14_172555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "day_tags", force: :cascade do |t|
    t.bigint "day_id", null: false
    t.bigint "tag_id", null: false
    t.index ["day_id"], name: "index_day_tags_on_day_id"
    t.index ["tag_id"], name: "index_day_tags_on_tag_id"
  end

  create_table "days", force: :cascade do |t|
    t.integer "day", null: false
    t.integer "month", null: false
    t.integer "year", null: false
  end

  create_table "log_detail_types", force: :cascade do |t|
    t.string "description", null: false
    t.index ["description"], name: "index_log_detail_types_on_description", unique: true
  end

  create_table "log_details", force: :cascade do |t|
    t.integer "log_entry_id", null: false
    t.integer "log_detail_type_id", null: false
    t.string "rating"
    t.index ["log_detail_type_id"], name: "index_log_details_on_log_detail_type_id"
    t.index ["log_entry_id"], name: "index_log_details_on_log_entry_id"
  end

  create_table "log_entries", force: :cascade do |t|
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "event_time", null: false
  end

  create_table "meal_event_details", force: :cascade do |t|
    t.bigint "meal_event_id", null: false
    t.float "quantity", null: false
    t.bigint "victual_item_id", null: false
    t.bigint "unit_id", null: false
    t.index ["meal_event_id"], name: "index_meal_event_details_on_meal_event_id"
    t.index ["unit_id"], name: "index_meal_event_details_on_unit_id"
    t.index ["victual_item_id"], name: "index_meal_event_details_on_victual_item_id"
  end

  create_table "meal_events", force: :cascade do |t|
    t.datetime "event_time", null: false
    t.bigint "meal_type_id", null: false
    t.index ["meal_type_id"], name: "index_meal_events_on_meal_type_id"
  end

  create_table "meal_types", force: :cascade do |t|
    t.string "name", null: false
    t.index ["name"], name: "index_meal_types_on_name", unique: true
  end

  create_table "medication_event_details", force: :cascade do |t|
    t.bigint "medication_event_id", null: false
    t.bigint "medication_type_id", null: false
    t.integer "quantity", null: false
    t.index ["medication_event_id"], name: "index_medication_event_details_on_medication_event_id"
    t.index ["medication_type_id"], name: "index_medication_event_details_on_medication_type_id"
  end

  create_table "medication_events", force: :cascade do |t|
    t.datetime "event_time", null: false
  end

  create_table "medication_types", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "unit_id", null: false
    t.index ["name"], name: "index_medication_types_on_name", unique: true
    t.index ["unit_id"], name: "index_medication_types_on_unit_id"
  end

  create_table "snack_events", force: :cascade do |t|
    t.datetime "event_time", null: false
    t.float "quantity", null: false
    t.integer "victual_item_id", null: false
    t.integer "unit_id", null: false
    t.index ["unit_id"], name: "index_snack_events_on_unit_id"
    t.index ["victual_item_id"], name: "index_snack_events_on_victual_item_id"
  end

  create_table "supplement_event_details", force: :cascade do |t|
    t.float "quantity", null: false
    t.integer "supplement_event_id", null: false
    t.integer "supplement_type_id", null: false
    t.index ["supplement_event_id"], name: "index_supplement_event_details_on_supplement_event_id"
    t.index ["supplement_type_id"], name: "index_supplement_event_details_on_supplement_type_id"
  end

  create_table "supplement_events", force: :cascade do |t|
    t.datetime "event_time", null: false
  end

  create_table "supplement_types", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "unit_id", null: false
    t.index ["name"], name: "index_supplement_types_on_name", unique: true
    t.index ["unit_id"], name: "index_supplement_types_on_unit_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "units", force: :cascade do |t|
    t.string "name", null: false
    t.string "display_name", null: false
    t.index ["name"], name: "index_units_on_name", unique: true
  end

  create_table "victual_items", force: :cascade do |t|
    t.string "name", null: false
    t.integer "victual_type_id", null: false
    t.index ["name"], name: "index_victual_items_on_name", unique: true
    t.index ["victual_type_id"], name: "index_victual_items_on_victual_type_id"
  end

  create_table "victual_types", force: :cascade do |t|
    t.string "name", null: false
    t.index ["name"], name: "index_victual_types_on_name", unique: true
  end

  create_table "workout_activities", force: :cascade do |t|
    t.string "name", null: false
    t.index ["name"], name: "index_workout_activities_on_name", unique: true
  end

  create_table "workout_event_details", force: :cascade do |t|
    t.integer "workout_event_id", null: false
    t.integer "workout_activity_id", null: false
    t.bigint "unit_id", null: false
    t.index ["unit_id"], name: "index_workout_event_details_on_unit_id"
    t.index ["workout_activity_id"], name: "index_workout_event_details_on_workout_activity_id"
    t.index ["workout_event_id"], name: "index_workout_event_details_on_workout_event_id"
  end

  create_table "workout_events", force: :cascade do |t|
    t.datetime "event_time", null: false
  end

  add_foreign_key "day_tags", "days"
  add_foreign_key "day_tags", "tags"
  add_foreign_key "meal_event_details", "meal_events"
  add_foreign_key "meal_event_details", "units"
  add_foreign_key "meal_event_details", "victual_items"
  add_foreign_key "meal_events", "meal_types"
  add_foreign_key "medication_event_details", "medication_events"
  add_foreign_key "medication_event_details", "medication_types"
  add_foreign_key "medication_types", "units"
end
