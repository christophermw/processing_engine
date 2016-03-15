class AddDefaultDelayUnitValueForTrigger < ActiveRecord::Migration
  def up
    change_column_default :triggers, :delay_unit, 'minutes'
  end

  def down
    change_column_default :triggers, :delay_unit, nil
  end
end
