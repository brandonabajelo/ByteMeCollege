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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160913023516) do

  create_table "departments", force: :cascade do |t|
    t.string   "d_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", force: :cascade do |t|
    t.string   "m_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "department_id"
  end
=======
ActiveRecord::Schema.define(version: 20160908210554) do

  create_table "homes", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
>>>>>>> 7ba8892c9901f64468ac84670b2c9328fcda1073

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string   "p_name"
    t.text     "p_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
