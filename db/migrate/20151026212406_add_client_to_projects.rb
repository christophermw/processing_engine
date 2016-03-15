class AddClientToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :client_id, :uuid
  end
end
