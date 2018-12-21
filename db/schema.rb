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

ActiveRecord::Schema.define(version: 2018_12_18_202553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors_films", id: false, force: :cascade do |t|
    t.bigint "director_id", null: false
    t.bigint "film_id", null: false
    t.index ["director_id", "film_id"], name: "index_directors_films_on_director_id_and_film_id"
    t.index ["film_id", "director_id"], name: "index_directors_films_on_film_id_and_director_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.date "premiere"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_films", id: false, force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "film_id", null: false
    t.index ["film_id", "genre_id"], name: "index_films_genres_on_film_id_and_genre_id"
    t.index ["genre_id", "film_id"], name: "index_films_genres_on_genre_id_and_film_id"
  end

  create_table "screenwriters_films", id: false, force: :cascade do |t|
    t.bigint "screenwriter_id", null: false
    t.bigint "film_id", null: false
    t.index ["film_id", "screenwriter_id"], name: "index_films_screenwriters_on_film_id_and_screenwriter_id"
    t.index ["screenwriter_id", "film_id"], name: "index_films_screenwriters_on_screenwriter_id_and_film_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screenwriters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
