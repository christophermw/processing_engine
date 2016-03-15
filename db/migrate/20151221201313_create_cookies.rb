class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies, id: :uuid do |t|
      t.uuid :profile_id
      t.string :value

      t.timestamps null: false
    end
    add_index :cookies, :profile_id
  end
end
