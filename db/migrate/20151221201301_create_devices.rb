class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices, id: :uuid do |t|
      t.uuid :profile_id
      t.string :value

      t.timestamps null: false
    end
    add_index :devices, :profile_id
  end
end
