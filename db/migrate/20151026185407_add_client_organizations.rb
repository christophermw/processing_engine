class AddClientOrganizations < ActiveRecord::Migration
  def change
    create_table :client_organizations, id: :uuid do |t|
      t.string :name
      t.string :suborganization
      t.uuid :client_id
      t.timestamps
    end
  end
end
