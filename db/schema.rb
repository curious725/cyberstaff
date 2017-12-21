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

ActiveRecord::Schema.define(version: 20171215142206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "candidate_contacts", force: :cascade do |t|
    t.hstore "phones"
    t.hstore "emails"
    t.hstore "social_networks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.bigint "phase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_id"], name: "index_candidates_on_phase_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.string "author"
    t.bigint "candidate_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_comments_on_candidate_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "phase_categories", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phases", force: :cascade do |t|
    t.text "name"
    t.bigint "phase_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_category_id"], name: "index_phases_on_phase_category_id"
  end

  create_table "phases_vacancies", id: false, force: :cascade do |t|
    t.bigint "phase_id"
    t.bigint "vacancy_id"
    t.index ["phase_id"], name: "index_phases_vacancies_on_phase_id"
    t.index ["vacancy_id"], name: "index_phases_vacancies_on_vacancy_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacancies", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "candidates", "phases"
  add_foreign_key "comments", "candidates"
  add_foreign_key "comments", "users"
  add_foreign_key "phases", "phase_categories"
end
