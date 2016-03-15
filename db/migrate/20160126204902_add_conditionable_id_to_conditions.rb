class AddConditionableIdToConditions < ActiveRecord::Migration
  def up
    add_column :conditions, :conditionable_id, :uuid
    add_column :conditions, :conditionable_type, :string
    add_index :conditions, :conditionable_id
    add_index :conditions, :conditionable_type
    Condition.where('trigger_id IS NOT NULL').each do |c|
      c.update_column(:conditionable_id, c.trigger_id)
      c.update_column(:conditionable_type, 'Trigger')
    end
    remove_column :conditions, :trigger_id
  end

  def down
    add_column :conditions, :trigger_id, :uuid
    add_index :conditions, :trigger_id
    Condition.where('conditionable_id IS NOT NULL').each do |c|
      c.update_column(:trigger_id, c.conditionable_id)
    end
    remove_column :conditions, :conditionable_id
    remove_column :conditions, :conditionable_type
  end
end
