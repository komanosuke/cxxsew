# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_07_010846) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "article_cats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "articles", force: :cascade do |t|
    t.integer "article_cat_id"
    t.string "title"
    t.string "image"
    t.string "image_title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_cat_id"], name: "index_articles_on_article_cat_id"
  end

  create_table "cart_works", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "work_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_cart_works_on_cart_id"
    t.index ["work_id"], name: "index_cart_works_on_work_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "quantity"
    t.string "status"
    t.string "discount"
    t.string "session_id"
    t.string "coupon_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "news", force: :cascade do |t|
    t.integer "news_cat_id"
    t.string "title"
    t.string "image"
    t.string "image_title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["news_cat_id"], name: "index_news_on_news_cat_id"
  end

  create_table "news_cats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "zip"
    t.string "prefecture"
    t.string "city"
    t.string "street"
    t.string "address"
    t.string "tel"
    t.string "image"
    t.text "profile"
    t.string "remember_digest"
    t.string "activation_digest"
    t.boolean "activated"
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_cats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "works", force: :cascade do |t|
    t.integer "work_cat_id"
    t.string "title"
    t.string "image"
    t.integer "price"
    t.text "text"
    t.string "onlyone"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["work_cat_id"], name: "index_works_on_work_cat_id"
  end

  add_foreign_key "articles", "article_cats"
  add_foreign_key "cart_works", "carts"
  add_foreign_key "cart_works", "works"
  add_foreign_key "carts", "users"
  add_foreign_key "news", "news_cats"
  add_foreign_key "works", "work_cats"
end
