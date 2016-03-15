class CreateProfileDefinitions < ActiveRecord::Migration
  def change
    create_table :profile_definitions, id: :uuid do |t|
      t.uuid :project_id

      t.timestamps null: false
    end
    add_index :profile_definitions, :project_id
  end
end
