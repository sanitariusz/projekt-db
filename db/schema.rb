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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140130132539) do
=======
ActiveRecord::Schema.define(version: 20140129192945) do
>>>>>>> 3daec7294a3c4681588e9715f61642108bb6cc3b

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 60
    t.string   "surname"
    t.string   "role"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "admittances", force: true do |t|
    t.string   "access_to"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "worker_id"
  end

<<<<<<< HEAD
  create_table "departments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

=======
>>>>>>> 3daec7294a3c4681588e9715f61642108bb6cc3b
  create_table "domains", force: true do |t|
    t.string   "name"
    t.string   "adress"
    t.date     "expiration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "worker_id"
  end

  create_table "hardware_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hardwares", force: true do |t|
    t.string   "name"
    t.string   "serial"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "worker_id"
    t.integer  "hardware_type_id"
  end

  create_table "softwares", force: true do |t|
    t.string   "name",       limit: 100
    t.string   "license"
    t.date     "buy_date"
    t.text     "purpose"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "worker_id"
  end

  create_table "workers", force: true do |t|
    t.string   "name",          limit: 50
    t.string   "surname",       limit: 60
    t.string   "email",         limit: 254
    t.string   "superior",      limit: 40
    t.string   "phone",         limit: 12
    t.string   "login",         limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id"
  end

end
