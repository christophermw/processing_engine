class ChangeProfileDataFieldType < ActiveRecord::Migration
  def change
    remove_column :profiles, :data, :text
    add_column :profiles, :data, :json
  end
end
