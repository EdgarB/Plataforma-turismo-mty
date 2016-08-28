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

ActiveRecord::Schema.define(version: 20160828080930) do

  create_table "locals", force: :cascade do |t|
    t.string   "nombre"
    t.time     "apertura"
    t.time     "clausura"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "servicios_publicos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "foto"
    t.text     "descripcion"
    t.time     "apertura"
    t.time     "clausura"
    t.string   "direccion"
    t.string   "contacto"
    t.boolean  "lunes"
    t.boolean  "martes"
    t.boolean  "miercoles"
    t.boolean  "jueves"
    t.boolean  "viernes"
    t.boolean  "sabado"
    t.boolean  "domingo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "servicios_turisticos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "foto"
    t.text     "descripcion"
    t.time     "apertura"
    t.time     "clausura"
    t.string   "direccion"
    t.string   "contacto"
    t.boolean  "lunes"
    t.boolean  "martes"
    t.boolean  "miercoles"
    t.boolean  "jueves"
    t.boolean  "viernes"
    t.boolean  "sabado"
    t.boolean  "domingo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
