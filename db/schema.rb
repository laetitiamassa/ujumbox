# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140504105006) do

  create_table "ujumbes", force: true do |t|
    t.string   "title"
    t.string   "theme"
    t.datetime "date"
    t.text     "description"
    t.string   "link"
    t.string   "kind"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "what"
    t.text     "why"
    t.text     "how"
    t.string   "budget"
    t.string   "funding"
    t.boolean  "theme_ressources"
    t.boolean  "theme_education"
    t.boolean  "theme_housing"
    t.boolean  "theme_environnement"
    t.boolean  "theme_culture"
    t.boolean  "theme_economy"
    t.boolean  "theme_social"
    t.boolean  "theme_security"
    t.boolean  "theme_scientific"
    t.boolean  "theme_foreign"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.text     "career"
    t.string   "title"
    t.text     "achievements"
    t.string   "profession"
    t.string   "party"
    t.string   "party_short"
    t.datetime "birth_date"
    t.string   "birth_place"
    t.string   "residency"
    t.text     "action_area"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.boolean  "theme_ressources"
    t.boolean  "theme_culture"
    t.boolean  "theme_education"
    t.boolean  "theme_social"
    t.boolean  "theme_security"
    t.boolean  "theme_housing"
    t.boolean  "theme_environnement"
    t.boolean  "theme_scientific"
    t.boolean  "theme_foreign"
    t.boolean  "theme_economy"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end