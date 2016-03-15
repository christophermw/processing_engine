class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles, id: :uuid do |t|
      t.uuid :project_id
      t.string :primary_key
      t.text :data

      t.timestamps null: false
    end
    add_index :profiles, :project_id
    add_index :profiles, :primary_key
  end
end
