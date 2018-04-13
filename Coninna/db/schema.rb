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

ActiveRecord::Schema.define(version: 20180413172911) do

  create_table "admins", force: :cascade do |t|
    t.integer  "user_profile_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_profile_id"], name: "index_admins_on_user_profile_id"
  end

  create_table "guests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "category"
    t.text     "description"
    t.integer  "days_to_go"
    t.integer  "goal_amount"
    t.string   "title"
    t.string   "descriptive_page"
    t.integer  "user_id"
    t.integer  "actual_money"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "promises", force: :cascade do |t|
    t.date     "delivery_date"
    t.text     "description"
    t.integer  "amount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "user_name"
    t.integer  "phone"
    t.string   "mail"
    t.string   "role"
    t.date     "dob"
    t.text     "credit_card_info"
    t.string   "country"
    t.string   "password"
    t.text     "address"
    t.datetime "last_access"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_profile_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_profile_id"], name: "index_users_on_user_profile_id"
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_wishlists_on_project_id"
  end

end
