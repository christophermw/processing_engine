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

ActiveRecord::Schema.define(version: 20160217173805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "actions", force: :cascade do |t|
    t.uuid     "trigger_id"
    t.string   "command"
    t.text     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
  end

  add_index "actions", ["trigger_id"], name: "index_actions_on_trigger_id", using: :btree
  add_index "actions", ["type"], name: "index_actions_on_type", using: :btree

  create_table "client_organizations", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.string   "suborganization"
    t.uuid     "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.string   "ms_username"
    t.string   "ms_password"
    t.string   "ms_api_host"
    t.string   "ms_host"
    t.boolean  "active",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conditional_field_values", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "field_id"
    t.string   "value"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "conditional_field_values", ["field_id"], name: "index_conditional_field_values_on_field_id", using: :btree

  create_table "conditions", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "field1_id"
    t.uuid     "field2_id"
    t.string   "operator"
    t.string   "previous_condition_operator"
    t.string   "alternate_value"
    t.integer  "position"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "operand_option",              default: 1
    t.uuid     "conditionable_id"
    t.string   "conditionable_type"
  end

  add_index "conditions", ["conditionable_id"], name: "index_conditions_on_conditionable_id", using: :btree
  add_index "conditions", ["conditionable_type"], name: "index_conditions_on_conditionable_type", using: :btree

  create_table "cookies", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "profile_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cookies", ["profile_id"], name: "index_cookies_on_profile_id", using: :btree

  create_table "devices", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "profile_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "devices", ["profile_id"], name: "index_devices_on_profile_id", using: :btree

  create_table "emails", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "profile_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "emails", ["profile_id"], name: "index_emails_on_profile_id", using: :btree

  create_table "expressions", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "expressable_id"
    t.string   "operator"
    t.string   "expressable_type"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.uuid     "field_id"
    t.string   "alternate_value"
    t.integer  "position"
    t.integer  "operand_option",   default: 1
  end

  create_table "fields", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "project_id"
    t.uuid     "tag_id"
    t.uuid     "profile_definition_id"
    t.string   "name"
    t.string   "datatype"
    t.string   "type"
    t.string   "initial_value"
    t.boolean  "primary_key"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.uuid     "field_id"
  end

  add_index "fields", ["field_id"], name: "index_fields_on_field_id", using: :btree
  add_index "fields", ["project_id"], name: "index_fields_on_project_id", using: :btree

  create_table "mobiles", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "profile_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mobiles", ["profile_id"], name: "index_mobiles_on_profile_id", using: :btree

  create_table "organization_users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "full_name"
    t.boolean  "is_admin",               default: false
    t.boolean  "is_super_user",          default: false
    t.uuid     "client_organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profile_definitions", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profile_definitions", ["project_id"], name: "index_profile_definitions_on_project_id", using: :btree

  create_table "profiles", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "project_id"
    t.string   "primary_key"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.json     "data",         default: {}
    t.json     "trigger_data", default: {}
  end

  add_index "profiles", ["primary_key"], name: "index_profiles_on_primary_key", using: :btree
  add_index "profiles", ["project_id"], name: "index_profiles_on_project_id", using: :btree

  create_table "projects", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.text     "description"
    t.string   "time_zone"
    t.uuid     "client_organization_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "tags", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "project_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  add_index "tags", ["project_id"], name: "index_tags_on_project_id", using: :btree

  create_table "tags_fields", force: :cascade do |t|
    t.uuid     "tag_id"
    t.uuid     "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags_fields", ["field_id"], name: "index_tags_fields_on_field_id", using: :btree
  add_index "tags_fields", ["tag_id"], name: "index_tags_fields_on_tag_id", using: :btree

  create_table "triggers", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "project_id"
    t.uuid     "tag_id"
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.uuid     "parent_trigger_id"
    t.integer  "delay_amount",        default: 0
    t.string   "delay_unit",          default: "minutes"
    t.string   "delay_status"
    t.boolean  "delay_enabled"
    t.boolean  "delay_reset_enabled"
    t.string   "type"
  end

  add_index "triggers", ["parent_trigger_id"], name: "index_triggers_on_parent_trigger_id", using: :btree
  add_index "triggers", ["project_id"], name: "index_triggers_on_project_id", using: :btree
  add_index "triggers", ["tag_id"], name: "index_triggers_on_tag_id", using: :btree

end
