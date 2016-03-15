class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags, id: :uuid do |t|
      t.uuid :project_id
      t.string :name

      t.timestamps null: false
    end
    add_index :tags, :project_id
  end
end
