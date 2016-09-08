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

ActiveRecord::Schema.define(version: 20160907044711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auths", force: :cascade do |t|
    t.integer  "provider",   default: 0, null: false
    t.string   "uid",                    null: false
    t.string   "name",                   null: false
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["uid", "provider"], name: "index_auths_on_uid_and_provider", using: :btree
    t.index ["user_id"], name: "index_auths_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.integer  "primary_auth_id", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["primary_auth_id"], name: "index_users_on_primary_auth_id", using: :btree
  end

end
