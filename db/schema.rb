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

ActiveRecord::Schema.define(version: 20150125214228) do

  create_table "addon_list_items", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "addon_list_id"
    t.integer  "addon_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "addon_list_items", ["user_id"], name: "index_addon_list_items_on_user_id"

  create_table "addon_lists", force: true do |t|
    t.string   "name"
    t.string   "onlineViewLabel"
    t.string   "posViewLabel"
    t.boolean  "sortListByIndex"
    t.boolean  "sortListByName"
    t.boolean  "multipleSelection"
    t.boolean  "enabled"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "addon_lists", ["user_id"], name: "index_addon_lists_on_user_id"

  create_table "addons", force: true do |t|
    t.string   "name"
    t.string   "onlineViewLabel"
    t.string   "printViewLabel"
    t.string   "posViewLabel"
    t.integer  "displayIndex"
    t.boolean  "visibleOnline"
    t.boolean  "visiblePos"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "addons", ["user_id"], name: "index_addons_on_user_id"

  create_table "category_sizes", force: true do |t|
    t.string   "prefixLabelOnline"
    t.string   "prefixLabelPrint"
    t.string   "prefixLabelPos"
    t.string   "postfixLabelOnline"
    t.string   "postfixLabelPrint"
    t.string   "postfixLabelPos"
    t.integer  "top_category_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "category_sizes", ["top_category_id"], name: "index_category_sizes_on_top_category_id"
  add_index "category_sizes", ["user_id"], name: "index_category_sizes_on_user_id"

  create_table "group_addon_list_prices", force: true do |t|
    t.string   "cost"
    t.float    "prices"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "group_id"
    t.integer  "group_addon_list_id"
    t.integer  "addon_id"
    t.integer  "category_size_id"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "group_addon_list_prices", ["addon_id"], name: "index_group_addon_list_prices_on_addon_id"
  add_index "group_addon_list_prices", ["category_size_id"], name: "index_group_addon_list_prices_on_category_size_id"
  add_index "group_addon_list_prices", ["group_addon_list_id"], name: "index_group_addon_list_prices_on_group_addon_list_id"
  add_index "group_addon_list_prices", ["group_id"], name: "index_group_addon_list_prices_on_group_id"
  add_index "group_addon_list_prices", ["user_id"], name: "index_group_addon_list_prices_on_user_id"

  create_table "group_addon_lists", force: true do |t|
    t.string   "name"
    t.integer  "displayIndex"
    t.integer  "logicIndex"
    t.boolean  "required"
    t.integer  "group_id"
    t.integer  "user_id"
    t.integer  "addon_list_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "group_addon_lists", ["addon_list_id"], name: "index_group_addon_lists_on_addon_list_id"
  add_index "group_addon_lists", ["group_id"], name: "index_group_addon_lists_on_group_id"
  add_index "group_addon_lists", ["user_id"], name: "index_group_addon_lists_on_user_id"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "onlineViewLabel"
    t.string   "posViewLabel"
    t.string   "headerImagePath"
    t.integer  "displayIndex"
    t.boolean  "visibleOnline"
    t.boolean  "visibleOnPos"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "user_id"
    t.integer  "top_category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "groups", ["top_category_id"], name: "index_groups_on_top_category_id"
  add_index "groups", ["user_id"], name: "index_groups_on_user_id"

  create_table "item_sizes", force: true do |t|
    t.string   "name"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "item_sizes", ["item_id"], name: "index_item_sizes_on_item_id"
  add_index "item_sizes", ["user_id"], name: "index_item_sizes_on_user_id"

  create_table "item_types", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "item_types", ["user_id"], name: "index_item_types_on_user_id"

  create_table "items", force: true do |t|
    t.string   "name"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "item_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "items", ["group_id"], name: "index_items_on_group_id"
  add_index "items", ["item_type_id"], name: "index_items_on_item_type_id"
  add_index "items", ["user_id"], name: "index_items_on_user_id"

  create_table "order_lines", force: true do |t|
    t.string   "text"
    t.string   "dealText"
    t.string   "customerNote"
    t.float    "total"
    t.float    "price"
    t.float    "discount"
    t.float    "addonCost"
    t.float    "quantity"
    t.boolean  "deleted"
    t.integer  "order_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "order_lines", ["order_id"], name: "index_order_lines_on_order_id"
  add_index "order_lines", ["user_id"], name: "index_order_lines_on_user_id"

  create_table "order_sources", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_sources", ["user_id"], name: "index_order_sources_on_user_id"

  create_table "order_statuses", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_statuses", ["user_id"], name: "index_order_statuses_on_user_id"

  create_table "order_types", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_types", ["user_id"], name: "index_order_types_on_user_id"

  create_table "orders", force: true do |t|
    t.string   "name"
    t.float    "total"
    t.float    "subtotal"
    t.float    "discount"
    t.float    "surcharge"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "order_type_id"
    t.integer  "order_status_id"
    t.integer  "order_source_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "orders", ["order_source_id"], name: "index_orders_on_order_source_id"
  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id"
  add_index "orders", ["order_type_id"], name: "index_orders_on_order_type_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "top_categories", force: true do |t|
    t.string   "name"
    t.string   "shortDescription"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "top_categories", ["user_id"], name: "index_top_categories_on_user_id"

  create_table "user_types", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_types", ["user_id"], name: "index_user_types_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
