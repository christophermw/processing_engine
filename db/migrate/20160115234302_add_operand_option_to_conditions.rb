class AddOperandOptionToConditions < ActiveRecord::Migration
  def change
    add_column :conditions, :operand_option, :integer, default: 1
  end
end
