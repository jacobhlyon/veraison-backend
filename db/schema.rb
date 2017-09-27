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

ActiveRecord::Schema.define(version: 20170927181806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nose_scores", force: :cascade do |t|
    t.integer "wine_score_id"
    t.boolean "clean"
    t.string "other_faults"
    t.string "intensity"
    t.string "age"
    t.string "fruit_description"
    t.boolean "wood"
    t.string "wood_type"
    t.string "wood_age"
    t.string "additional_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "faults", array: true
    t.text "fruit", array: true
    t.text "fruit_character", array: true
    t.text "non_fruit", array: true
    t.text "organic_earth", array: true
    t.text "inorganic_earth", array: true
  end

  create_table "palate_scores", force: :cascade do |t|
    t.integer "wine_score_id"
    t.string "sweetness"
    t.string "fruit_description"
    t.boolean "wood"
    t.string "wood_type"
    t.string "wood_age"
    t.boolean "bitter"
    t.string "tannin"
    t.string "acid"
    t.string "alcohol"
    t.string "body"
    t.string "texture"
    t.string "balance"
    t.string "length"
    t.string "complexity"
    t.string "additional_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "fruit", array: true
    t.text "fruit_character", array: true
    t.text "non_fruit", array: true
    t.text "organic_earth", array: true
    t.text "inorganic_earth", array: true
  end

  create_table "sight_scores", force: :cascade do |t|
    t.integer "wine_score_id"
    t.string "clarity"
    t.string "concentration"
    t.string "color"
    t.string "secondary_color"
    t.boolean "rim_variation"
    t.string "staining"
    t.string "tearing"
    t.boolean "gas_evidence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "wine_id"
    t.integer "user_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.integer "vintage"
    t.string "varietal"
    t.boolean "blend"
    t.string "wine_color"
    t.string "image"
    t.string "winery"
    t.integer "snooth_rank"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
