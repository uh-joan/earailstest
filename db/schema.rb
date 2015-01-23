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

ActiveRecord::Schema.define(version: 20150123120723) do

  create_table "create_product_items", force: true do |t|
    t.string   "name"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "create_product_items", ["user_id"], name: "index_create_product_items_on_user_id"

  create_table "product_add_on_list_items", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_add_on_list_id"
    t.integer  "product_add_on_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "product_add_on_list_items", ["user_id"], name: "index_product_add_on_list_items_on_user_id"

  create_table "product_add_on_lists", force: true do |t|
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

  add_index "product_add_on_lists", ["user_id"], name: "index_product_add_on_lists_on_user_id"

  create_table "product_add_ons", force: true do |t|
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

  add_index "product_add_ons", ["user_id"], name: "index_product_add_ons_on_user_id"

  create_table "Categories", force: true do |t|
    t.string   "name"
    t.string   "shortDescription"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "product_categories", ["user_id"], name: "index_product_categories_on_user_id"

  create_table "product_category_sizes", force: true do |t|
    t.string   "prefixLabelOnline"
    t.string   "prefixLabelPrint"
    t.string   "prefixLabelPos"
    t.string   "postfixLabelOnline"
    t.string   "postfixLabelPrint"
    t.string   "postfixLabelPos"
    t.integer  "product_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "product_category_sizes", ["product_category_id"], name: "index_product_category_sizes_on_product_category_id"

  create_table "product_group_add_on_list_prices", force: true do |t|
    t.string   "cost"
    t.float    "prices"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "product_group_id"
    t.integer  "pr_gr_adon_li_id"
    t.integer  "product_add_on_id"
    t.integer  "pr_cat_size_id"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "product_group_add_on_list_prices", ["pr_cat_size_id"], name: "index_product_group_add_on_list_prices_on_pr_cat_size_id"
  add_index "product_group_add_on_list_prices", ["pr_gr_adon_li_id"], name: "index_product_group_add_on_list_prices_on_pr_gr_adon_li_id"
  add_index "product_group_add_on_list_prices", ["product_add_on_id"], name: "index_product_group_add_on_list_prices_on_product_add_on_id"
  add_index "product_group_add_on_list_prices", ["product_group_id"], name: "index_product_group_add_on_list_prices_on_product_group_id"
  add_index "product_group_add_on_list_prices", ["user_id"], name: "index_product_group_add_on_list_prices_on_user_id"

  create_table "product_group_add_on_lists", force: true do |t|
    t.string   "name"
    t.integer  "displayIndex"
    t.integer  "logicIndex"
    t.boolean  "required"
    t.integer  "product_group_id"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "product_group_add_on_lists", ["product_group_id"], name: "index_product_group_add_on_lists_on_product_group_id"
  add_index "product_group_add_on_lists", ["user_id"], name: "index_product_group_add_on_lists_on_user_id"

  create_table "product_groups", force: true do |t|
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
    t.integer  "product_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "product_groups", ["product_category_id"], name: "index_product_groups_on_product_category_id"
  add_index "product_groups", ["user_id"], name: "index_product_groups_on_user_id"

  create_table "product_item_sizes", force: true do |t|
    t.string   "name"
    t.integer  "product_item_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "product_item_sizes", ["product_item_id"], name: "index_product_item_sizes_on_product_item_id"
  add_index "product_item_sizes", ["user_id"], name: "index_product_item_sizes_on_user_id"

  create_table "product_item_types", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_item_types", ["user_id"], name: "index_product_item_types_on_user_id"

  create_table "product_items", force: true do |t|
    t.string   "name"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "user_id"
    t.integer  "product_group_id"
    t.integer  "product_item_type_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "product_items", ["product_group_id"], name: "index_product_items_on_product_group_id"
  add_index "product_items", ["product_item_type_id"], name: "index_product_items_on_product_item_type_id"
  add_index "product_items", ["user_id"], name: "index_product_items_on_user_id"

  create_table "sales_order_sources", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sales_order_sources", ["user_id"], name: "index_sales_order_sources_on_user_id"

  create_table "sales_order_statuses", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sales_order_statuses", ["user_id"], name: "index_sales_order_statuses_on_user_id"

  create_table "sales_order_types", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sales_order_types", ["user_id"], name: "index_sales_order_types_on_user_id"

  create_table "sales_orders", force: true do |t|
    t.string   "name"
    t.float    "total"
    t.float    "subtotal"
    t.float    "discount"
    t.float    "surcharge"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "sales_order_type_id"
    t.integer  "sales_order_status_id"
    t.integer  "sales_order_source_id"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "sales_orders", ["sales_order_source_id"], name: "index_sales_orders_on_sales_order_source_id"
  add_index "sales_orders", ["sales_order_status_id"], name: "index_sales_orders_on_sales_order_status_id"
  add_index "sales_orders", ["sales_order_type_id"], name: "index_sales_orders_on_sales_order_type_id"
  add_index "sales_orders", ["user_id"], name: "index_sales_orders_on_user_id"

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
