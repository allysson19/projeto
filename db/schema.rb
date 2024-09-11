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

ActiveRecord::Schema[7.2].define(version: 2024_08_26_184720) do
  create_table "abafuncionarios", force: :cascade do |t|
    t.string "nomecompleto"
    t.date "datanasc"
    t.string "genero"
    t.string "cpf"
    t.string "rg"
    t.string "rua"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.string "telefone"
    t.string "email"
    t.string "cargo"
    t.string "status"
    t.string "departamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cargos", force: :cascade do |t|
    t.string "nomecargo"
    t.text "descricao"
    t.string "departamento"
    t.string "nivelcargo"
    t.string "salbase"
    t.text "requisitos"
    t.text "beneficios"
    t.string "statuscargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nomedepartamento"
    t.text "descricao"
    t.string "codigodep"
    t.string "localizacao"
    t.string "string"
    t.string "statusdep"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
