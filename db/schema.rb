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

ActiveRecord::Schema.define(version: 20171124144339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: :cascade do |t|
    t.string "type"
    t.integer "attachable_id"
    t.string "attachable_type"
    t.string "attachment_file_name"
    t.string "attachment_content_type"
    t.integer "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "email"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
  end

  create_table "verification_documents", force: :cascade do |t|
    t.string "type"
    t.integer "verifiable_document_id"
    t.string "verifiable_document_type"
  end

end
