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

ActiveRecord::Schema.define(version: 2018_09_06_160247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "billing_address_line_1"
    t.string "billing_address_line_2"
    t.string "billing_city"
    t.string "billing_province"
    t.string "billing_country"
    t.string "billing_zipcode"
    t.string "phone"
    t.string "cell_phone"
    t.string "fax"
    t.string "contact"
    t.integer "terms"
    t.integer "credit"
    t.integer "quick_pay"
    t.string "email"
    t.string "website"
    t.string "notes"
    t.string "invoice_transmit_method"
    t.string "proof_of_delivery"
    t.string "shipping_address_line_1"
    t.string "shipping_address_line_2"
    t.string "shipping_city"
    t.string "shipping_province"
    t.string "shipping_country"
    t.string "shipping_zipcode"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "cell_phone"
    t.string "fax"
    t.string "email"
    t.string "sin"
    t.string "job_title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "hourly_rate"
    t.string "gross_pay"
    t.datetime "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
