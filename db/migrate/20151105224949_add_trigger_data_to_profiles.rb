class AddTriggerDataToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :trigger_data, :text
  end
end
