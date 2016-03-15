class AddParentTriggerIdToTriggers < ActiveRecord::Migration
  def change
    add_column :triggers, :parent_trigger_id, :uuid
    add_index :triggers, :parent_trigger_id
  end
end
