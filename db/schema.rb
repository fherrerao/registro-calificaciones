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

ActiveRecord::Schema[7.0].define(version: 2023_03_12_152258) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anios", force: :cascade do |t|
    t.string "descripcion"
    t.float "notaMinima"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calificacions", force: :cascade do |t|
    t.integer "bimestre"
    t.float "calificacion"
    t.string "valorObtenido"
    t.bigint "user_id", null: false
    t.bigint "tipo_id", null: false
    t.bigint "anio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anio_id"], name: "index_calificacions_on_anio_id"
    t.index ["tipo_id"], name: "index_calificacions_on_tipo_id"
    t.index ["user_id"], name: "index_calificacions_on_user_id"
  end

  create_table "compania", force: :cascade do |t|
    t.string "descripcion"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_compania_on_user_id"
  end

  create_table "pelotons", force: :cascade do |t|
    t.string "descripcion"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pelotons_on_user_id"
  end

  create_table "seccions", force: :cascade do |t|
    t.string "descripcion"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_seccions_on_user_id"
  end

  create_table "tipo_pruebas", force: :cascade do |t|
    t.string "desTipoPrueba"
    t.string "generPrueba"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "calificacions", "anios"
  add_foreign_key "calificacions", "tipos"
  add_foreign_key "calificacions", "users"
  add_foreign_key "compania", "users"
  add_foreign_key "pelotons", "users"
  add_foreign_key "seccions", "users"
end
