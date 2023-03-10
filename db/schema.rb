# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_25_005255) do

  create_table "events", force: :cascade do |t|
    t.string "evt_name", default: "Default Event", null: false
    t.string "evt_host", default: "Default Host", null: false
    t.date "evt_sdate", null: false
    t.date "evt_edate", null: false
    t.text "evt_desc", default: "No description", null: false
    t.boolean "evt_public", default: false, null: false
    t.string "evt_code", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evt_code"], name: "index_events_on_evt_code", unique: true
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "myevents", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.string "myevent_code", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_myevents_on_event_id"
    t.index ["user_id"], name: "index_myevents_on_user_id"
  end

  create_table "myprests", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "prest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prest_id"], name: "index_myprests_on_prest_id"
    t.index ["user_id"], name: "index_myprests_on_user_id"
  end

  create_table "pgrades", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "prest_id", null: false
    t.integer "pd_socre", default: 0, null: false
    t.text "pd_review", default: "No Review", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prest_id"], name: "index_pgrades_on_prest_id"
    t.index ["user_id"], name: "index_pgrades_on_user_id"
  end

  create_table "prests", force: :cascade do |t|
    t.string "prest_name", default: "Default Presentation", null: false
    t.date "prest_evdue", null: false
    t.text "prest_desc", default: "No Description", null: false
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_prests_on_event_id"
    t.index ["user_id"], name: "index_prests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.boolean "admin", default: false, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "users"
  add_foreign_key "myevents", "events"
  add_foreign_key "myevents", "users"
  add_foreign_key "myprests", "prests"
  add_foreign_key "myprests", "users"
  add_foreign_key "pgrades", "prests"
  add_foreign_key "pgrades", "users"
  add_foreign_key "prests", "events"
  add_foreign_key "prests", "users"
end
