class AddFieldIdToFields < ActiveRecord::Migration
  def change
    add_column :fields, :field_id, :uuid
    add_index :fields, :field_id
  end
end
