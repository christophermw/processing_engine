class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.uuid :trigger_id
      t.string :command
      t.text :data

      t.timestamps null: false
    end
    add_index :actions, :trigger_id
  end
end
