class ChangeExpressions < ActiveRecord::Migration
  def change
    remove_index :expressions, column: :expressable_id
    remove_index :expressions, column: :previous_expression_id
    remove_column :expressions, :field1_id, :uuid
    remove_column :expressions, :field2_id, :uuid
    remove_column :expressions, :previous_expression_id, :uuid
    remove_column :expressions, :previous_expression_operator, :string

    add_column :expressions, :field_id, :uuid
    add_column :expressions, :alternate_value, :string
    add_column :expressions, :position, :integer
  end
end
