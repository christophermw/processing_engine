class AddClients < ActiveRecord::Migration
  def up
    create_table :clients, id: :uuid do |t|
      t.string :name
      t.string :ms_username
      t.string :ms_password
      t.string :ms_api_host
      t.string :ms_host
      t.boolean :active, default: true
      t.timestamps
    end
    Client.create( name: 'svdemo2', ms_username: "allyapi", ms_password: "strongview", ms_api_host: "svdemo2.strongviewdemo.com")
  end

  def down
    drop_table :clients
  end
end
