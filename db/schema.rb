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

ActiveRecord::Schema.define(version: 20160929182943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_groups_on_team_id", using: :btree
  end

  create_table "standup_team_members", force: :cascade do |t|
    t.integer  "standup_id"
    t.text     "today"
    t.text     "yesterday"
    t.integer  "team_member_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["standup_id"], name: "index_standup_team_members_on_standup_id", using: :btree
    t.index ["team_member_id"], name: "index_standup_team_members_on_team_member_id", using: :btree
  end

  create_table "standups", force: :cascade do |t|
    t.date     "date"
    t.text     "comments"
    t.text     "meetings"
    t.boolean  "event_of_the_day", default: true
    t.integer  "team_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["team_id"], name: "index_standups_on_team_id", using: :btree
  end

  create_table "team_members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_team_members_on_group_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "recipient_email",                     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_teams_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_teams_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "groups", "teams"
  add_foreign_key "standup_team_members", "standups"
  add_foreign_key "standup_team_members", "team_members"
  add_foreign_key "standups", "teams"
  add_foreign_key "team_members", "groups"
end
