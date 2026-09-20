ActiveRecord::Schema[8.1].define(version: 2026_09_05_000001) do
  create_table "widgets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end
end
