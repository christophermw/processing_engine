class AddOrganizationUsers < ActiveRecord::Migration
  def change
    create_table :organization_users, id:  :uuid do |t|
      t.string :username
      t.string :email
      t.string :full_name
      t.boolean :is_admin, default: false
      t.boolean :is_super_user, default: false
      t.uuid :client_organization_id
      t.timestamps
    end
  end
end
