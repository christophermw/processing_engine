class TagsField < ActiveRecord::Base

  belongs_to :tag
  belongs_to :field

  after_save :update_tag
  after_destroy :delete_stray_fields

  def update_tag
    tag.touch
  end

  def delete_stray_fields
    field.destroy if field.tags.empty?
  end

end
