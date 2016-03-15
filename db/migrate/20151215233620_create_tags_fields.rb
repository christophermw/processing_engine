class CreateTagsFields < ActiveRecord::Migration
  def change
    create_table :tags_fields do |t|
      t.uuid :tag_id
      t.uuid :field_id

      t.timestamps null: false
    end
    add_index :tags_fields, :tag_id
    add_index :tags_fields, :field_id
    Field.where( type: 'TagField').update_all( type: 'EventField' )
  end
end
