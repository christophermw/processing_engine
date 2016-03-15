class AddDelayOptionsToTriggers < ActiveRecord::Migration
  def change
    add_column :triggers, :delay_status, :string
    add_column :triggers, :delay_enabled, :boolean
    add_column :triggers, :delay_reset_enabled, :boolean
    add_column :triggers, :type, :string
  end
end
