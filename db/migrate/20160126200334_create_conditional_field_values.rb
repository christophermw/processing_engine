class CreateConditionalFieldValues < ActiveRecord::Migration
  def change
    create_table :conditional_field_values, id: :uuid do |t|
      t.uuid :field_id
      t.string :value
      t.integer :position

      t.timestamps null: false
    end
    add_index :conditional_field_values, :field_id
  end
end
