class CreateExpressions < ActiveRecord::Migration
  def change
    create_table :expressions, id: :uuid do |t|
      t.uuid :field1_id
      t.uuid :field2_id
      t.uuid :expressable_id
      t.uuid :previous_expression_id
      t.string :operator
      t.string :expressable_type
      t.string :previous_expression_operator

      t.timestamps null: false
    end
    add_index :expressions, :expressable_id
    add_index :expressions, :previous_expression_id
  end
end
