class AddOperandOptionToExpressions < ActiveRecord::Migration
  def change
    add_column :expressions, :operand_option, :integer, default: 1
  end
end
