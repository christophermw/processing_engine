class AddDescriptionAndTimezoneToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :description, :text
    add_column :projects, :time_zone, :string
  end
end
