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

ActiveRecord::Schema.define(version: 2019_01_02_191107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_directors_on_user_id"
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
    t.bigint "user_id"
    t.index ["user_id"], name: "index_films_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_genres_on_user_id"
  end

  create_table "genres_films", id: false, force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "film_id", null: false
    t.index ["film_id", "genre_id"], name: "index_films_genres_on_film_id_and_genre_id"
    t.index ["genre_id", "film_id"], name: "index_films_genres_on_genre_id_and_film_id"
  end

  create_table "screenwriters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_screenwriters_on_user_id"
  end

  create_table "screenwriters_films", id: false, force: :cascade do |t|
    t.bigint "screenwriter_id", null: false
    t.bigint "film_id", null: false
    t.index ["film_id", "screenwriter_id"], name: "index_films_screenwriters_on_film_id_and_screenwriter_id"
    t.index ["screenwriter_id", "film_id"], name: "index_films_screenwriters_on_screenwriter_id_and_film_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "directors", "users"
  add_foreign_key "films", "users"
  add_foreign_key "genres", "users"
  add_foreign_key "screenwriters", "users"
end
