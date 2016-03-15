class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions, id: :uuid do |t|
      t.uuid :field1_id
      t.uuid :field2_id
      t.uuid :trigger_id
      t.string :operator
      t.string :previous_condition_operator
      t.string :alternate_value
      t.integer :position

      t.timestamps null: false
    end
    add_index :conditions, :trigger_id
  end
end
