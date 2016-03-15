class RemoveClientIdFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :client_id, :uuid
  end
end
