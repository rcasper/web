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

ActiveRecord::Schema.define(version: 20130613163007) do

  create_table "auth_group", force: true do |t|
    t.string "name", limit: 80, null: false
  end

  add_index "auth_group", ["name"], name: "name", unique: true, using: :btree

  create_table "auth_group_permissions", force: true do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_group_permissions", ["group_id", "permission_id"], name: "group_id", unique: true, using: :btree
  add_index "auth_group_permissions", ["group_id"], name: "auth_group_permissions_bda51c3c", using: :btree
  add_index "auth_group_permissions", ["permission_id"], name: "auth_group_permissions_1e014c8f", using: :btree

  create_table "auth_message", force: true do |t|
    t.integer "user_id",                    null: false
    t.text    "message", limit: 2147483647, null: false
  end

  add_index "auth_message", ["user_id"], name: "auth_message_fbfc09f1", using: :btree

  create_table "auth_permission", force: true do |t|
    t.string  "name",            limit: 50,  null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
  end

  add_index "auth_permission", ["content_type_id", "codename"], name: "content_type_id", unique: true, using: :btree
  add_index "auth_permission", ["content_type_id"], name: "auth_permission_e4470c6e", using: :btree

  create_table "auth_user", force: true do |t|
    t.string   "username",     limit: 30,  null: false
    t.string   "first_name",   limit: 30,  null: false
    t.string   "last_name",    limit: 30,  null: false
    t.string   "email",        limit: 75,  null: false
    t.string   "password",     limit: 128, null: false
    t.boolean  "is_staff",                 null: false
    t.boolean  "is_active",                null: false
    t.boolean  "is_superuser",             null: false
    t.datetime "last_login",               null: false
    t.datetime "date_joined",              null: false
  end

  add_index "auth_user", ["username"], name: "username", unique: true, using: :btree

  create_table "auth_user_groups", force: true do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
  end

  add_index "auth_user_groups", ["group_id"], name: "auth_user_groups_bda51c3c", using: :btree
  add_index "auth_user_groups", ["user_id", "group_id"], name: "user_id", unique: true, using: :btree
  add_index "auth_user_groups", ["user_id"], name: "auth_user_groups_fbfc09f1", using: :btree

  create_table "auth_user_user_permissions", force: true do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_user_user_permissions", ["permission_id"], name: "auth_user_user_permissions_1e014c8f", using: :btree
  add_index "auth_user_user_permissions", ["user_id", "permission_id"], name: "user_id", unique: true, using: :btree
  add_index "auth_user_user_permissions", ["user_id"], name: "auth_user_user_permissions_fbfc09f1", using: :btree

  create_table "django_admin_log", force: true do |t|
    t.datetime "action_time",                        null: false
    t.integer  "user_id",                            null: false
    t.integer  "content_type_id"
    t.text     "object_id",       limit: 2147483647
    t.string   "object_repr",     limit: 200,        null: false
    t.integer  "action_flag",     limit: 2,          null: false
    t.text     "change_message",  limit: 2147483647, null: false
  end

  add_index "django_admin_log", ["content_type_id"], name: "django_admin_log_e4470c6e", using: :btree
  add_index "django_admin_log", ["user_id"], name: "django_admin_log_fbfc09f1", using: :btree

  create_table "django_content_type", force: true do |t|
    t.string "name",      limit: 100, null: false
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
  end

  add_index "django_content_type", ["app_label", "model"], name: "app_label", unique: true, using: :btree

  create_table "django_session", primary_key: "session_key", force: true do |t|
    t.text     "session_data", limit: 2147483647, null: false
    t.datetime "expire_date",                     null: false
  end

  add_index "django_session", ["expire_date"], name: "django_session_c25c2c28", using: :btree

  create_table "django_site", force: true do |t|
    t.string "domain", limit: 100, null: false
    t.string "name",   limit: 50,  null: false
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree

  create_table "polls_choice", force: true do |t|
    t.integer "poll_id",             null: false
    t.string  "choice",  limit: 200, null: false
    t.integer "votes",               null: false
  end

  add_index "polls_choice", ["poll_id"], name: "polls_choice_763e883", using: :btree

  create_table "polls_poll", force: true do |t|
    t.string   "question", limit: 200, null: false
    t.datetime "pub_date",             null: false
  end

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "reservations", force: true do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "people"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
