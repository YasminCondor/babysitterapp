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

ActiveRecord::Schema.define(version: 20150803215127) do

  create_table "babysitters", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "lastname",    limit: 255
    t.string   "document",    limit: 255
    t.date     "startdate"
    t.integer  "maxcount",    limit: 4
    t.text     "resume",      limit: 65535
    t.integer  "phone",       limit: 4
    t.string   "email",       limit: 255
    t.string   "password",    limit: 255
    t.integer  "district_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "babysitters", ["district_id"], name: "index_babysitters_on_district_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.integer  "phone",      limit: 4
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "service_id", limit: 4
    t.integer  "value",      limit: 4
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ratings", ["service_id"], name: "index_ratings_on_service_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.date     "date"
    t.boolean  "state",         limit: 1
    t.integer  "babysitter_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "schedules", ["babysitter_id"], name: "index_schedules_on_babysitter_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.integer  "client_id",     limit: 4
    t.integer  "babysitter_id", limit: 4
    t.integer  "schedule_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "services", ["babysitter_id"], name: "index_services_on_babysitter_id", using: :btree
  add_index "services", ["client_id"], name: "index_services_on_client_id", using: :btree
  add_index "services", ["schedule_id"], name: "index_services_on_schedule_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "babysitters", "districts"
  add_foreign_key "ratings", "services"
  add_foreign_key "schedules", "babysitters"
  add_foreign_key "services", "babysitters"
  add_foreign_key "services", "clients"
  add_foreign_key "services", "schedules"
end
