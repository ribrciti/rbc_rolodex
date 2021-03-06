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

ActiveRecord::Schema.define(version: 20170207172640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "names", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state_name"
    t.string   "state_abbr"
    t.string   "zip_code"
    t.string   "country"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
