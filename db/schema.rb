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

ActiveRecord::Schema.define(version: 20141209163944) do

  create_table "product_add_on_list_items", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_add_on_list_id"
    t.integer  "product_add_on_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_add_on_lists", ["user_id"], name: "index_product_add_on_lists_on_user_id"

  create_table "product_add_ons", force: true do |t|
    t.string   "name"
    t.string   "onlineViewLabel"
    t.string   "posViewLabel"
    t.string   "printLabel"
    t.integer  "displayIndex"
    t.boolean  "visibleOnline"
    t.boolean  "visiblePos"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_add_ons", ["user_id"], name: "index_product_add_ons_on_user_id"

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.string   "shortDescription"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_categories", ["user_id"], name: "index_product_categories_on_user_id"

  create_table "product_category_sizes", force: true do |t|
    t.string   "prefixLabelOnline"
    t.string   "prefixLabelPrint"
    t.string   "prefixLabelPos"
    t.string   "postLabelOnline"
    t.string   "postLabelPrint"
    t.string   "postLabelPos"
    t.integer  "productCategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_category_sizes", ["productCategory_id"], name: "index_product_category_sizes_on_productCategory_id"

  create_table "product_group_add_on_lists", force: true do |t|
    t.integer  "displayIndex"
    t.integer  "logicIndex"
    t.boolean  "required"
    t.integer  "product_group_id"
    t.integer  "product_group_add_on_list_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_group_add_on_lists", ["user_id"], name: "index_product_group_add_on_lists_on_user_id"

  create_table "product_groups", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "onlineViewLabel"
    t.string   "posViewLabel"
    t.string   "headerImagePath"
    t.integer  "displayIndex"
    t.boolean  "visibleOnline"
    t.boolean  "visibleOnPos"
    t.boolean  "enabled"
    t.boolean  "deleted"
    t.integer  "product_category_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_groups", ["user_id"], name: "index_product_groups_on_user_id"

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
