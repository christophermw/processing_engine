class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles, id: :uuid do |t|
      t.uuid :profile_id
      t.string :value

      t.timestamps null: false
    end
    add_index :mobiles, :profile_id
  end
end
