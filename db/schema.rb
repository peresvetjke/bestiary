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

ActiveRecord::Schema[7.0].define(version: 2023_08_29_070057) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "disclaimers", force: :cascade do |t|
    t.string "text", limit: 100
    t.bigint "leprosorium_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leprosorium_id"], name: "index_disclaimers_on_leprosorium_id"
  end

  create_table "entities", force: :cascade do |t|
    t.bigint "leprosorium_id", null: false
    t.bigint "disclaimer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disclaimer_id"], name: "index_entities_on_disclaimer_id"
    t.index ["leprosorium_id"], name: "index_entities_on_leprosorium_id"
  end

  create_table "entity_aliases", force: :cascade do |t|
    t.string "text"
    t.bigint "entity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_entity_aliases_on_entity_id"
  end

  create_table "leprosoria", force: :cascade do |t|
    t.string "title", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_leprosoria_on_title", unique: true
  end

  add_foreign_key "disclaimers", "leprosoria"
  add_foreign_key "entities", "disclaimers"
  add_foreign_key "entities", "leprosoria"
  add_foreign_key "entity_aliases", "entities"
end
