class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields, id: :uuid do |t|
      t.uuid :project_id
      t.uuid :tag_id
      t.uuid :profile_definition_id
      t.string :name
      t.string :datatype
      t.string :type
      t.string :initial_value
      t.boolean :primary_key

      t.timestamps null: false
    end
    add_index :fields, :project_id
  end
end
