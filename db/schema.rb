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

ActiveRecord::Schema.define(version: 2018_09_07_173048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.string "contact"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "website"
    t.string "HST"
    t.string "PST"
    t.string "GST"
    t.string "us_dot"
    t.string "mc_number"
    t.string "currency"
    t.string "carrier_code"
    t.string "scac_code"
    t.string "last_invoice_number"
    t.string "factory_company"
    t.string "factoring_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.bigint "company_id"
    t.index ["company_id"], name: "index_customers_on_company_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.string "phone"
    t.string "cell_phone"
    t.boolean "is_company_driver"
    t.boolean "is_owner_operator"
    t.string "email"
    t.string "sin"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "date_of_birth"
    t.string "license_number"
    t.datetime "license_expiry_date"
    t.datetime "license_issue_date"
    t.string "license_province"
    t.string "passport"
    t.string "passport_issue_country"
    t.string "citizenship_country"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_drivers_on_company_id"
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
    t.bigint "company_id"
    t.index ["company_id"], name: "index_employees_on_company_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "cauntry"
    t.string "zip"
    t.string "phone"
    t.string "fax"
    t.string "contact"
    t.text "notes"
    t.string "email"
    t.string "website"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_locations_on_company_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.string "unit_number"
    t.string "make"
    t.string "model"
    t.string "year"
    t.string "plate_number"
    t.string "type"
    t.string "state"
    t.string "country"
    t.string "vin"
    t.boolean "is_company_truck", default: false, null: false
    t.bigint "driver_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_trucks_on_company_id"
    t.index ["driver_id"], name: "index_trucks_on_driver_id"
  end

  add_foreign_key "customers", "companies"
  add_foreign_key "drivers", "companies"
  add_foreign_key "employees", "companies"
  add_foreign_key "locations", "companies"
  add_foreign_key "trucks", "companies"
  add_foreign_key "trucks", "drivers"
end
