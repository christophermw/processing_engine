class AddDelayToTriggers < ActiveRecord::Migration
  def change
    add_column :triggers, :delay_amount, :integer, default: 0
    add_column :triggers, :delay_unit, :string
  end
end
