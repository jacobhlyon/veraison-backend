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

ActiveRecord::Schema.define(version: 20170920160326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nose_scores", force: :cascade do |t|
    t.integer "wine_score_id"
    t.boolean "clean"
    t.string "faults"
    t.string "other_faults"
    t.string "intensity"
    t.string "age"
    t.string "fruit"
    t.string "fruit_character"
    t.string "fruit_description"
    t.string "non_fruit"
    t.string "organic_earth"
    t.string "inorganic_earth"
    t.boolean "wood"
    t.string "wood_type"
    t.string "wood_age"
    t.string "additional_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "palate_scores", force: :cascade do |t|
    t.integer "wine_score_id"
    t.string "sweetness"
    t.string "fruit"
    t.string "fruit_character"
    t.string "fruit_description"
    t.string "non_fruit"
    t.string "organic_earth"
    t.string "inorganic_earth"
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
    t.string "type"
    t.string "image"
    t.string "winery"
    t.integer "snooth_rank"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
