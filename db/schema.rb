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

ActiveRecord::Schema.define(version: 20180410200751) do

  create_table "applications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checklistitems", force: :cascade do |t|
    t.string "title"
    t.integer "checklist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["checklist_id"], name: "index_checklistitems_on_checklist_id"
  end

  create_table "checklists", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checklists_tasks", id: false, force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "checklist_id", null: false
  end

  create_table "components", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "status", default: "New"
    t.text "description"
    t.integer "application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["application_id"], name: "index_components_on_application_id"
  end

  create_table "components_tasks", id: false, force: :cascade do |t|
    t.integer "component_id", null: false
    t.integer "task_id", null: false
  end

  create_table "components_testsuites", id: false, force: :cascade do |t|
    t.integer "component_id", null: false
    t.integer "testsuite_id", null: false
  end

  create_table "functionalities", force: :cascade do |t|
    t.string "title"
    t.integer "component_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["component_id"], name: "index_functionalities_on_component_id"
  end

  create_table "task_memberships", force: :cascade do |t|
    t.integer "task_id"
    t.integer "subtask_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "user_id"
    t.integer "priority"
    t.string "status"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "estimated_cost"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "testcases", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testcases_testsuites", id: false, force: :cascade do |t|
    t.integer "testcase_id", null: false
    t.integer "testsuite_id", null: false
  end

  create_table "testsuites", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
