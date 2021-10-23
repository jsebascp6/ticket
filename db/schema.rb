# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_23_232704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "residence_address", default: "", null: false
    t.integer "phone", null: false
    t.integer "document_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "site", default: "", null: false
    t.string "address", default: "", null: false
    t.string "name", default: "", null: false
    t.datetime "date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "provider_id"
    t.bigint "ticket_id"
    t.index ["provider_id"], name: "index_events_on_provider_id"
    t.index ["ticket_id"], name: "index_events_on_ticket_id"
  end

  create_table "events_clients", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "client_id"
    t.index ["client_id"], name: "index_events_clients_on_client_id"
    t.index ["event_id"], name: "index_events_clients_on_event_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.datetime "date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "client_id"
    t.bigint "sale_id"
    t.index ["client_id"], name: "index_invoices_on_client_id"
    t.index ["sale_id"], name: "index_invoices_on_sale_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.integer "phone", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.datetime "date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "amount", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "providers"
  add_foreign_key "events", "tickets"
  add_foreign_key "invoices", "clients"
  add_foreign_key "invoices", "sales"
end
