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

ActiveRecord::Schema.define(version: 20160119182603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.string   "requisite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "access_code"
    t.string   "subject"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "teacher_id"
  end

  add_index "classrooms", ["teacher_id"], name: "index_classrooms_on_teacher_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "post_id"
    t.integer  "user_id"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "enrollments", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "student_id"
    t.integer  "classroom_id"
  end

  add_index "enrollments", ["classroom_id"], name: "index_enrollments_on_classroom_id", using: :btree
  add_index "enrollments", ["student_id"], name: "index_enrollments_on_student_id", using: :btree

  create_table "exercise_answers", force: :cascade do |t|
    t.datetime "submitted_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "exercise_list_id"
  end

  add_index "exercise_answers", ["exercise_list_id"], name: "index_exercise_answers_on_exercise_list_id", using: :btree

  create_table "exercise_lists", force: :cascade do |t|
    t.datetime "expires_at"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  add_index "options", ["question_id"], name: "index_options_on_question_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "classroom_id"
    t.integer  "teacher_id"
  end

  add_index "posts", ["classroom_id"], name: "index_posts_on_classroom_id", using: :btree
  add_index "posts", ["teacher_id"], name: "index_posts_on_teacher_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "about_me"
    t.string   "city"
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_answers", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "exercise_answer_id"
    t.integer  "question_id"
    t.integer  "option_id"
  end

  add_index "question_answers", ["exercise_answer_id"], name: "index_question_answers_on_exercise_answer_id", using: :btree
  add_index "question_answers", ["option_id"], name: "index_question_answers_on_option_id", using: :btree
  add_index "question_answers", ["question_id"], name: "index_question_answers_on_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "exercise_list_id"
  end

  add_index "questions", ["exercise_list_id"], name: "index_questions_on_exercise_list_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
