class AddTypeToActions < ActiveRecord::Migration
  def change
    add_column :actions, :type, :string
    add_index :actions, :type
  end
end
