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

ActiveRecord::Schema.define(version: 2019_04_19_145200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.boolean "chronical"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "name"
    t.integer "no_drug"
    t.integer "type"
    t.integer "injection_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patent_diseases", force: :cascade do |t|
    t.bigint "patent_id"
    t.bigint "disease_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disease_id"], name: "index_patent_diseases_on_disease_id"
    t.index ["patent_id"], name: "index_patent_diseases_on_patent_id"
  end

  create_table "patents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatment_drugs", force: :cascade do |t|
    t.bigint "treatment_id"
    t.bigint "drug_id"
    t.integer "schedule"
    t.integer "meal"
    t.integer "drugs_numbers"
    t.integer "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_id"], name: "index_treatment_drugs_on_drug_id"
    t.index ["treatment_id"], name: "index_treatment_drugs_on_treatment_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.bigint "patent_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patent_id"], name: "index_treatments_on_patent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "patent_diseases", "diseases"
  add_foreign_key "patent_diseases", "patents"
  add_foreign_key "treatment_drugs", "drugs"
  add_foreign_key "treatment_drugs", "treatments"
  add_foreign_key "treatments", "patents"
end
