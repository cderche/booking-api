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

ActiveRecord::Schema.define(version: 20161121171453) do

  create_table "extras", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.boolean  "quantity_based"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "extras_services", id: false, force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "extra_id",   null: false
    t.index ["service_id", "extra_id"], name: "index_extras_services_on_service_id_and_extra_id"
  end

  create_table "frequencies", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.decimal  "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pricing_parameters", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "quantity_minimum"
    t.integer  "quantity_maximum"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pricing_parameters_services", id: false, force: :cascade do |t|
    t.integer "service_id",           null: false
    t.integer "pricing_parameter_id", null: false
    t.index ["service_id", nil], name: "index_pricing_parameters_services_on_service_id_and_pp_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.decimal  "price"
    t.boolean  "hourly"
    t.integer  "resource_minimum"
    t.integer  "resource_maximum"
    t.integer  "hours_minimum"
    t.integer  "hours_maximum"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "auth_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
