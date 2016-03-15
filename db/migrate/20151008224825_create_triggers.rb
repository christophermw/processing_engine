class CreateTriggers < ActiveRecord::Migration
  def change
    create_table :triggers, id: :uuid do |t|
      t.uuid :project_id
      t.uuid :tag_id
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
    add_index :triggers, :project_id
    add_index :triggers, :tag_id
  end
end
