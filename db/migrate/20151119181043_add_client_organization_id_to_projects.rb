class AddClientOrganizationIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :client_organization_id, :uuid
  end
end
