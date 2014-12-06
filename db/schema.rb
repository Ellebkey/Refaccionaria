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

ActiveRecord::Schema.define(version: 20141205121505) do

  create_table "acquisitions", force: true do |t|
    t.integer  "cant"
    t.integer  "product_id"
    t.integer  "buy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acquisitions", ["buy_id"], name: "index_acquisitions_on_buy_id", using: :btree
  add_index "acquisitions", ["product_id"], name: "index_acquisitions_on_product_id", using: :btree

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
    t.string   "email",                             default: "",  null: false
    t.string   "encrypted_password",                default: "",  null: false
    t.string   "role",                              default: "",  null: false
    t.float    "salary",                 limit: 24, default: 0.0, null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "buys", force: true do |t|
    t.float    "total",         limit: 24
    t.date     "fecha"
    t.integer  "admin_user_id"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "buys", ["admin_user_id"], name: "index_buys_on_admin_user_id", using: :btree
  add_index "buys", ["provider_id"], name: "index_buys_on_provider_id", using: :btree

  create_table "categprods", force: true do |t|
    t.string   "tipe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "rfc"
    t.string   "email"
    t.boolean  "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "corrections", force: true do |t|
    t.text     "description"
    t.integer  "ticket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corrections", ["ticket_id"], name: "index_corrections_on_ticket_id", using: :btree

  create_table "factures", force: true do |t|
    t.date     "fecha"
    t.float    "totalfac",   limit: 24
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "factures", ["client_id"], name: "index_factures_on_client_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "clave"
    t.text     "description"
    t.integer  "stock"
    t.boolean  "avaible"
    t.float    "pricepublic",  limit: 24
    t.float    "pricedesc",    limit: 24
    t.float    "pricemaxd",    limit: 24
    t.integer  "categprod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["categprod_id"], name: "index_products_on_categprod_id", using: :btree

  create_table "providers", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "rfc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellreports", force: true do |t|
    t.float    "total",      limit: 24
    t.date     "fecha"
    t.integer  "sell_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sellreports", ["sell_id"], name: "index_sellreports_on_sell_id", using: :btree

  create_table "sells", force: true do |t|
    t.integer  "cant"
    t.float    "totalp",     limit: 24
    t.boolean  "state"
    t.integer  "product_id"
    t.integer  "facture_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sells", ["facture_id"], name: "index_sells_on_facture_id", using: :btree
  add_index "sells", ["product_id"], name: "index_sells_on_product_id", using: :btree

  create_table "tickets", force: true do |t|
    t.float    "totalp",        limit: 24
    t.integer  "admin_user_id"
    t.integer  "product_id"
    t.integer  "sell_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["admin_user_id"], name: "index_tickets_on_admin_user_id", using: :btree
  add_index "tickets", ["product_id"], name: "index_tickets_on_product_id", using: :btree
  add_index "tickets", ["sell_id"], name: "index_tickets_on_sell_id", using: :btree

end
