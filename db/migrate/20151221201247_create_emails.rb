class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails, id: :uuid do |t|
      t.uuid :profile_id
      t.string :value

      t.timestamps null: false
    end
    add_index :emails, :profile_id
  end
end
