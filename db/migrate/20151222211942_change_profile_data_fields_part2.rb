class ChangeProfileDataFieldsPart2 < ActiveRecord::Migration
  def up
    change_column :profiles, :data, :json, default: {}
    remove_column :profiles, :trigger_data, :text
    add_column :profiles, :trigger_data, :json, default: {}
  end

  def down
    change_column :profiles, :data, :json, default: nil
    remove_column :profiles, :trigger_data, :json, default: {}
    add_column :profiles, :trigger_data, :text
  end

end
